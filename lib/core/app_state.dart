import 'dart:async';
import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fleetonrouteapi/api.dart';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';
import 'package:quick_log/quick_log.dart';
import "package:maps_toolkit/maps_toolkit.dart" as mt;
import 'package:kirana_network_mobile/core/auth_utils.dart';
import 'package:kirana_network_mobile/injection_container.dart';
import 'package:shared_preferences/shared_preferences.dart';

final _logger = Logger("AppState");

class AppState extends ChangeNotifier {
  late AuthUserModel? authUser = null;
  late UserProfileModel? userProfile = null;
  late List<UserProfileOrganizationModel>? userProfileOrganizations = null;
  late List<OrganizationModel>? organizations = null;
  late GPSUnitModel? gpsUnit = null;
  late UserCredential? authUserCredential = null;

  late Position currentLocation;
  late StreamController<Position> locationStreamController =
      StreamController<Position>.broadcast();
  late AppSharedPreferences appSharedPreferences = AppSharedPreferences();

  AppState() {
    listenToLocationStream();
  }

  /// init stream to keep track of current location; update on change */
  void listenToLocationStream() {
    void setLocation(Position location) {
      print("Location().onLocationChanged $location");
      currentLocation = location;
      locationStreamController.add(currentLocation);
    }

    Geolocator.getCurrentPosition().then(setLocation);
    Geolocator.getPositionStream().listen(setLocation);
  }

  Future initialize(AuthUserModel authUser) async {
    await initializeAuthUser(authUser);
    initializeApiClient();
    await this.retrieveOrCreateUserProfile();
    await this.retrieveOrCreateGpsUnit();
  }

  Future initializeAuthUser(AuthUserModel authUser) async {
    this.authUser = authUser;
    await appSharedPreferences.setAuthUser(authUser);
    await refreshToken();
  }

  void initializeApiClient() {
    final apiClient = sl<ApiClient>();
    apiClient.addDefaultHeader("Content-Type", "application/json");
    apiClient.addDefaultHeader("Authorization", authUser?.idToken);
    notifyListeners();
  }

  /// retrieve or create userprofile
  Future retrieveOrCreateUserProfile() async {
    try {
      this.userProfile =
          await sl<UserprofilesApi>().retrieveUserProfile(authUser?.uid);
      _logger.debug("User: $userProfile");
    } catch (error) {
      this.userProfile = await sl<UserprofilesApi>()
          .createUserProfile(UserProfileModel.fromJson(
        {
          "firstName": authUser!.displayName == null ||
                  authUser!.displayName.split(" ").first.isEmpty
              ? "---"
              : authUser!.displayName.split(" ").first,
          "lastName": authUser!.displayName == null ||
                  authUser!.displayName.split(" ").skip(1).join(" ").isEmpty
              ? "---"
              : authUser!.displayName.split(" ").skip(1).join(" "),
          "email": authUser!.email,
          "id": authUser!.uid
        },
      ));
    }
  }

  /// retrieve or create gpsUnit
  Future retrieveOrCreateGpsUnit() async {
    try {
      this.gpsUnit =
          await sl<GpsunitsApi>().retrieveGpsUnit(authUser!.uid, authUser!.uid);
    } catch (error) {
      this.gpsUnit = await sl<GpsunitsApi>().createGpsUnit(
          authUser!.uid,
          GPSUnitModel.fromJson({
            "id": authUser!.uid,
            "associatedUserProfileId": authUser!.uid,
            "deviceName": "${authUser!.displayName ?? authUser!.uid}"
          }));
    }
  }

  get activeOrganization {
    return appSharedPreferences.getActiveOrganization();
  }

  Future logout() async {
    await appSharedPreferences.clear();
    this.userProfile = null;
    this.gpsUnit = null;
    this.userProfileOrganizations = null;
    this.authUser = null;
    this.authUserCredential = null;
  }

  void dispose() {
    locationStreamController.close();
    super.dispose();
  }
}

class AppSharedPreferences {
  late SharedPreferences sp;

  AppSharedPreferences() {
    sp = sl();
  }

  String encodeJson(Map<String, dynamic> json) {
    return jsonEncode(json);
  }

  Map<String, dynamic> decodeJson(String jsonString) {
    return jsonDecode(jsonString);
  }

  // ... get/set authUser
  Future<bool> setAuthUser(AuthUserModel model) async {
    return await sp.setString("AuthUser", encodeJson(model.toJson()));
  }

  AuthUserModel? getAuthUser() {
    if (!sp.containsKey("AuthUser")) {
      return null;
    }
    return AuthUserModel.fromJson(decodeJson(sp.getString("AuthUser")!));
  }

  // ... get/set activeOrganization
  Future<bool> setActiveOrganization(OrganizationModel model) async {
    return await sp.setString("ActiveOrganization", encodeJson(model.toJson()));
  }

  OrganizationModel? getActiveOrganization() {
    if (!sp.containsKey("ActiveOrganization")) {
      return null;
    }
    return OrganizationModel.fromJson(
        decodeJson(sp.getString("ActiveOrganization")!));
  }

  Future setActiveTrip(TripModel model) async {
    return await sp.setString("ActiveTrip", encodeJson(model.toJson()));
  }

  TripModel? getActiveTrip() {
    if (!sp.containsKey("ActiveTrip")) {
      return null;
    }
    return TripModel.fromJson(decodeJson(sp.getString("ActiveTrip")!));
  }

  Future clearActiveTrip() async {
    await sp.remove("ActiveTrip");
  }

  clear() async {
    await sp.clear();
  }
}

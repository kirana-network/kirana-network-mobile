import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/screens/forgot_password/components/forgot_password_screen.dart';
import 'package:kirana_network_mobile/screens/login/login_screen.dart';
import 'package:kirana_network_mobile/screens/oss_licenses/oss_licenses_screen.dart';
import 'package:kirana_network_mobile/screens/permissions/permission_required/permission_required_screen.dart';
import 'package:kirana_network_mobile/screens/profile/profile_account_screen/profile_account_screen.dart';
import 'package:kirana_network_mobile/screens/profile/profile_delete_screen/profile_delete_screen.dart';
import 'package:kirana_network_mobile/screens/profile/profile_invitation_details/profile_invitation_details_screen.dart';
import 'package:kirana_network_mobile/screens/profile/profile_invitations/profile_invitations_screen.dart';
import 'package:kirana_network_mobile/screens/profile/profile_screen/profile_screen.dart';
import 'package:kirana_network_mobile/screens/profile/profile_settings/profile_settings_screen.dart';
import 'package:kirana_network_mobile/screens/signup/signup_screen.dart';
import 'package:kirana_network_mobile/screens/splash/splash_screen.dart';
import 'package:kirana_network_mobile/screens/trips/trip_complete/trip_complete_screen.dart';
import 'package:kirana_network_mobile/screens/trips/trip_details/trip_details_screen.dart';
import 'package:kirana_network_mobile/screens/trips/trips_screen/trips_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  TripsScreen.routeName: (context) => TripsScreen(),
  TripDetailScreen.routeName: (context) => TripDetailScreen(),
  TripCompleteScreen.routeName: (context) => TripCompleteScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  ProfileAccountScreen.routeName: (context) => ProfileAccountScreen(),
  ProfileDeleteScreen.routeName: (context) => ProfileDeleteScreen(),
  ProfileSettingsScreen.routeName: (context) => ProfileSettingsScreen(),
  ProfileInvitationsScreen.routeName: (context) => ProfileInvitationsScreen(),
  ProfileInvitationDetailsScreen.routeName: (context) =>
      ProfileInvitationDetailsScreen(),
  PermissionRequiredScreen.routeName: (context) => PermissionRequiredScreen(),
  OSSLicensesScreen.routeName: (context) => OSSLicensesScreen(),
};

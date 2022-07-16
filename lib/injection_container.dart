import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'package:kirana_network_mobile/core/config.dart';
import 'package:kirana_network_mobile/core/app_state.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fleetonrouteapi/api.dart';

final sl = GetIt.instance;
Future init() async {
  //! References
  final appConfig = await AppConfig.load();
  sl.registerSingleton<AppConfig>(appConfig);
  sl.registerLazySingleton<AppState>(() => AppState());
  //! Repositories
  final apiClient = ApiClient(basePath: appConfig.apiUrl);
  apiClient.addDefaultHeader("Content-Type", "application/json");
  apiClient.addDefaultHeader("x-fleetonroute-client-api-version",
      appConfig.fleetOnRouteClientVersion!.full);
  apiClient.addDefaultHeader("x-kirana-network-client-api-version",
      appConfig.fleetOnRouteClientVersion!.full);
  sl.registerSingleton<ApiClient>(apiClient);
  sl.registerLazySingleton<GpsunitsApi>(() => GpsunitsApi(apiClient));
  sl.registerLazySingleton<AuthApi>(() => AuthApi(apiClient));
  sl.registerLazySingleton<UserprofilesApi>(() => UserprofilesApi(apiClient));
  sl.registerLazySingleton<OrganizationsApi>(() => OrganizationsApi(apiClient));
  sl.registerLazySingleton<InvitationsApi>(() => InvitationsApi(apiClient));
  sl.registerLazySingleton<TripsApi>(() => TripsApi(apiClient));
  sl.registerLazySingleton<ServicestatusApi>(() => ServicestatusApi(apiClient));
  sl.registerLazySingleton<NavigationApi>(() => NavigationApi(apiClient));
  //! Core

  //! External
  sl.registerLazySingleton(() => http.Client());
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerSingleton<SharedPreferences>(sharedPreferences);
}

//* For Changing language and using LazySingletons, use the code below
// https://pub.dev/packages/get_it#resetting-lazysingletons

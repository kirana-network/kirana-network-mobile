//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

library fleetonrouteapi;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';

import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/auth_api.dart';
part 'api/clients_api.dart';
part 'api/gpsunits_api.dart';
part 'api/invitations_api.dart';
part 'api/navigation_api.dart';
part 'api/organizations_api.dart';
part 'api/servicestatus_api.dart';
part 'api/trips_api.dart';
part 'api/userprofiles_api.dart';

part 'model/action_toggle_model.dart';
part 'model/api_key_model.dart';
part 'model/api_version_model.dart';
part 'model/auth_user_model.dart';
part 'model/client_model.dart';
part 'model/client_options_model.dart';
part 'model/create_api_key_request_model.dart';
part 'model/create_invitation_payload_model.dart';
part 'model/customer_profile_model.dart';
part 'model/gps_unit_model.dart';
part 'model/invitation_model.dart';
part 'model/invitation_payload_model.dart';
part 'model/lat_lng_model.dart';
part 'model/list_of_action_toggles_model.dart';
part 'model/list_of_api_keys_model.dart';
part 'model/list_of_clients_model.dart';
part 'model/list_of_customer_profiles_model.dart';
part 'model/list_of_invitations_model.dart';
part 'model/list_of_organization_user_profiles_model.dart';
part 'model/list_of_organizations_model.dart';
part 'model/list_of_trip_notes_model.dart';
part 'model/list_of_trips_model.dart';
part 'model/list_of_user_profiles_model.dart';
part 'model/login_payload_model.dart';
part 'model/offline_customer_profile_model.dart';
part 'model/optimized_route_request_payload_model.dart';
part 'model/optimized_route_response_model.dart';
part 'model/organization_customer_profile_model.dart';
part 'model/organization_model.dart';
part 'model/organization_query_filter_model.dart';
part 'model/organization_user_profile_model.dart';
part 'model/refresh_token_payload_model.dart';
part 'model/refresh_token_response_model.dart';
part 'model/schedule_date_model.dart';
part 'model/setup_customer_profile_request_model.dart';
part 'model/setup_customer_profile_response_model.dart';
part 'model/sort_param_model.dart';
part 'model/stripe_card_model.dart';
part 'model/stripe_customer_profile_model.dart';
part 'model/supported_api_versions_model.dart';
part 'model/tile_image_response_model.dart';
part 'model/trip_client_model.dart';
part 'model/trip_model.dart';
part 'model/trip_note_metadata_model.dart';
part 'model/trip_note_model.dart';
part 'model/trip_options_model.dart';
part 'model/trip_proof_of_delivery_model.dart';
part 'model/user_profile_model.dart';
part 'model/user_profile_organization_model.dart';
part 'model/user_profile_query_filter_model.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();

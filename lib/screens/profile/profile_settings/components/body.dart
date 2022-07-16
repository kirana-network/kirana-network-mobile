import 'package:fleetonrouteapi/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/core/api_utils.dart';
import 'package:kirana_network_mobile/components/render_loading.dart';
import 'package:kirana_network_mobile/core/app_state.dart';
import 'package:kirana_network_mobile/injection_container.dart';
import 'package:kirana_network_mobile/size_config.dart';
import 'package:kirana_network_mobile/theme.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late ListOfOrganizationsModel organizationsList;
  List<UserProfileOrganizationModel> userProfileOrganizations = [];
  late OrganizationModel activeOrganization;
  bool loading = true;
  _BodyState() {
    init();
  }

  init() async {
    final userProfilesApi = sl<UserprofilesApi>();
    final appState = sl<AppState>();
    final _userProfileOrganizations = await userProfilesApi
        .listUserProfileOrganizations(appState.authUser!.uid);
    final organizationIds =
        _userProfileOrganizations.map((org) => org.organizationId).toList();
    final organizationsApi = sl<OrganizationsApi>();
    final _organizationsList = await organizationsApi.listOrganizations(
        filter: FilterObject(ids: organizationIds).toString());
    setState(() {
      organizationsList = _organizationsList;
      userProfileOrganizations = _userProfileOrganizations;
      print("$organizationsList $userProfileOrganizations");
    });
    setState(() {
      activeOrganization = appState.activeOrganization;
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return renderLoading();
    }
    return showUserOrganizationListView();
  }

  Widget showUserOrganizationListView() {
    List<OrganizationModel> organizations = [];
    if (organizationsList != null && organizationsList.records.isNotEmpty) {
      organizations = organizationsList.records;
    }
    return ListView(
      children: organizations
          .map((organization) => ListTile(
                title: Text(organization.name),
                subtitle: Text(organization.address),
                selected: activeOrganization != null &&
                    activeOrganization.id == organization.id,
                onTap: () {
                  sl<AppState>()
                      .appSharedPreferences
                      .setActiveOrganization(organization);
                  setState(() =>
                      activeOrganization = sl<AppState>().activeOrganization);
                },
              ))
          .toList(),
    );
  }
}

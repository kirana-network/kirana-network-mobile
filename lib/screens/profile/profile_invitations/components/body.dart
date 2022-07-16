import 'package:fleetonrouteapi/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/core/api_utils.dart';
import 'package:kirana_network_mobile/components/render_loading.dart';
import 'package:kirana_network_mobile/core/app_state.dart';
import 'package:kirana_network_mobile/injection_container.dart';
import 'package:kirana_network_mobile/screens/profile/profile_invitation_details/profile_invitation_details_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kirana_network_mobile/size_config.dart';
import 'package:kirana_network_mobile/theme.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool loading = true;
  List<InvitationModel> invitations = [];
  late ListOfOrganizationsModel organizationsList;

  _BodyState() {
    init();
  }

  init() async {
    final userprofilesApi = sl<UserprofilesApi>();
    final organizationsApi = sl<OrganizationsApi>();
    final appState = sl<AppState>();
    try {
      final _invitations =
          await userprofilesApi.listInvitations(appState.authUser!.uid);
      print("_invitations: $_invitations");
      final organizationIds = _invitations
          .where((f) => f.status == InvitationModelStatusEnum.PENDING)
          .map((f) => f.organizationId)
          .toList();
      final _organizations = await organizationsApi.listOrganizations(
          filter: FilterObject(ids: organizationIds).toString());
      setState(() {
        invitations = _invitations.where((i) {
          return i.status == InvitationModelStatusEnum.PENDING;
        }).toList();
        print("_invitations: $_organizations");
        organizationsList = _organizations;
      });
    } on ApiException catch (exception) {
      print("$exception");
    } finally {
      Future.delayed(Duration(seconds: 1), () {
        setState(() {
          loading = false;
        });
      });
    }
  }

  OrganizationModel findOrganization(InvitationModel invitation) {
    return organizationsList.records
        .firstWhere((org) => org.id == invitation.organizationId);
  }

  updateInvitation(InvitationModel invitation, String status) async {
    try {
      final invitationApi = sl<UserprofilesApi>();
      final appState = sl<AppState>();
      final result = await invitationApi.updateInvitation(
          invitation.organizationId,
          appState.authUser!.uid,
          InvitationPayloadModel.fromJson(
            {"status": status},
          ));
    } on ApiException catch (exception) {
      print("$exception");
    }
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return renderLoading();
    }
    return renderInvitations(context);
  }

  Widget renderEmptyInvitations() {
    return Container(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset("assets/icons/page/empty-invitations.svg",
                width: double.infinity,
                height: getProportionateScreenHeight(400),
                color: svgImageColor),
            Text(
              "Looks like you are all caught up on your invitations!",
              style: screenHeadingTextStyle(),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }

  Widget renderInvitations(BuildContext context) {
    if (invitations.isEmpty) {
      return renderEmptyInvitations();
    } else {
      return renderInvitationsList();
    }
  }

  Widget renderInvitationsList() {
    return ListView(
        children: invitations
            .map((invitation) => ListTile(
                  title: Text(findOrganization(invitation).name),
                  subtitle: Text("${findOrganization(invitation).address}"),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      ProfileInvitationDetailsScreen.routeName,
                      arguments: <String, dynamic>{
                        "invitation": invitation,
                        "organization": organizationsList.records.firstWhere(
                            (org) => org.id == invitation.organizationId)
                      },
                    );
                  },
                ))
            .toList());
  }
}

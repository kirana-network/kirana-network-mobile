import 'package:fleetonrouteapi/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:maps_toolkit/maps_toolkit.dart';
import 'package:kirana_network_mobile/components/buttons.dart';
import 'package:kirana_network_mobile/components/map_preview.dart';
import 'package:kirana_network_mobile/core/app_state.dart';
import 'package:kirana_network_mobile/injection_container.dart';
import 'package:kirana_network_mobile/screens/profile/profile_invitations/profile_invitations_screen.dart';
import 'package:kirana_network_mobile/size_config.dart';
import 'package:kirana_network_mobile/theme.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final InvitationModel invitation = arguments!["invitation"];
    final OrganizationModel organization = arguments["organization"];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            organization.name,
            style: screenHeadingTextStyle().merge(TextStyle(
              color: accentColor,
            )),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                width: getProportionateScreenWidth(400),
                height: getProportionateScreenHeight(400),
                child: MapPreview(
                  marker: LatLng(
                    organization.location.latitude.toDouble(),
                    organization.location.longitude.toDouble(),
                  ),
                  height: 300,
                  width: 300,
                  organizationId: organization.id,
                  zoom: 15,
                ))),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: BigButton(
              onPressed: () async {
                final result = await sl<UserprofilesApi>().updateInvitation(
                    invitation.organizationId,
                    sl<AppState>().authUser!.uid,
                    InvitationPayloadModel.fromJson(
                      {"status": InvitationModelStatusEnum.ACCEPTED.toString()},
                    ));
                Navigator.pushNamed(
                    context, ProfileInvitationsScreen.routeName);
              },
              text: "Accept"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconBigButton(
            text: "Ignore",
            onPressed: () {
              Navigator.pushNamed(context, ProfileInvitationsScreen.routeName);
            },
            icon: SizedBox.shrink(),
          ),
        ),
        // SizedBox(
        //   height: 50,
        // ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     ElevatedButton(
        //         onPressed: () {
        //           Navigator.pushNamed(context, "/invitations");
        //         },
        //         style: ignoreButtonStyle,
        //         child: Text("*Ignore*")),
        //     ElevatedButton(
        //         onPressed: () async {
        //           final result = await sl<UserprofilesApi>().updateInvitation(
        //               invitation.organizationId,
        //               sl<AppState>().authUser.uid,
        //               InvitationPayloadModel.fromJson(
        //                 {
        //                   "status":
        //                       InvitationModelStatusEnum.ACCEPTED.toString()
        //                 },
        //               ));
        //           Navigator.pushNamed(context, "/invitations");
        //         },
        //         child: Text("*Accept*")),
        //   ],
        // )
      ],
    );
  }
}

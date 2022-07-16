import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:kirana_network_mobile/components/buttons.dart';
import 'package:kirana_network_mobile/screens/profile/profile_settings/profile_settings_screen.dart';
import 'package:kirana_network_mobile/size_config.dart';
import 'package:kirana_network_mobile/theme.dart';
import 'package:flutter_svg/svg.dart' as svg;

class EmptyTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: svg.SvgPicture.asset("assets/icons/page/no-data.svg",
                width: double.infinity,
                height: getProportionateScreenHeight(400),
                color: svgImageColor),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(30)),
        Text("No trips found",
            style:
                screenHeadingTextStyle().merge(TextStyle(color: accentColor))),
        Text("Do you want to try switching organizations?",
            style: screenSubTitleTextStyle()),
        SizedBox(height: getProportionateScreenHeight(30)),
        IconBigButton(
            icon: SizedBox.shrink(),
            onPressed: () {
              Navigator.pushNamed(context, ProfileSettingsScreen.routeName);
            },
            text: "Change Organization")
      ],
    );
  }
}

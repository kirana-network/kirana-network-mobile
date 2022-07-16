import 'package:flutter/material.dart';
import 'package:kirana_network_mobile/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kirana_network_mobile/theme.dart';

TextStyle bigButtonTextStyle() {
  return TextStyle(
    fontSize: getProportionateScreenWidth(20),
  );
}

ButtonStyle bigButtonStyle() {
  return ElevatedButton.styleFrom(
    primary: primaryColor,
    textStyle: bigButtonTextStyle(),
    minimumSize: Size(double.infinity, 50),
    padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(10),
        horizontal: getProportionateScreenWidth(40)),
  );
}

class BigButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  BigButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(text), onPressed: onPressed, style: bigButtonStyle());
  }
}

ButtonStyle secondaryBigButtonStyle() {
  return ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: Colors.black,
    textStyle: bigButtonTextStyle(),
    minimumSize: Size(double.infinity, 50),
    padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(10),
        horizontal: getProportionateScreenWidth(40)),
  );
}

class SecondaryBigButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  SecondaryBigButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(text),
        onPressed: onPressed,
        style: secondaryBigButtonStyle());
  }
}

class IconBigButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final Widget icon;
  IconBigButton({required this.text, this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        icon: icon,
        label: Text(text),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
                onPrimary: primaryColor,
                primary: Colors.white,
                textStyle: bigButtonTextStyle())
            .merge(bigButtonStyle()));
  }
}

class SvgIconButton extends StatelessWidget {
  const SvgIconButton(
      {required this.press, required this.icon, required Key key})
      : super(key: key);
  final String icon;
  final Function()? press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(10),
            ),
            height: getProportionateScreenHeight(60),
            width: getProportionateScreenWidth(60),
            decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      // spreadRadius: 2,
                      // color: Colors.grey.shade400,
                      // offset: Offset(1, 1),
                      )
                ]),
            child: SvgPicture.asset(icon)));
  }
}

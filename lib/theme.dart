import 'package:flutter/material.dart';
import 'package:kirana_network_mobile/size_config.dart';

final textColor = Colors.black;
final primaryColor = Color(0xFF0F4C5C);
final accentColor = Color(0xFFE36414);
final errorColor = Color(0xFF9A031E);
final accentBlueColor = Color(0xFF003459);
final whiteColor = Colors.white;
final svgImageColor = Colors.blueGrey;

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    // fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: textColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: textColor),
    bodyText2: TextStyle(color: textColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    ),
  );
}

TextStyle screenHeadingTextStyle() {
  return TextStyle(
    color: primaryColor,
    fontSize: getProportionateScreenWidth(18),
    fontWeight: FontWeight.bold,
  );
}

TextStyle screenSubTitleTextStyle() {
  return TextStyle(
    fontSize: getProportionateScreenWidth(14),
  );
}

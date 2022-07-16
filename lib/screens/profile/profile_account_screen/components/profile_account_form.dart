import 'dart:convert';

import 'package:fleetonrouteapi/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/components/buttons.dart';
import 'package:kirana_network_mobile/core/app_state.dart';
import 'package:kirana_network_mobile/helpers/keyboard.dart';
import 'package:kirana_network_mobile/injection_container.dart';
import 'package:kirana_network_mobile/screens/login/components/form_error.dart';
import 'package:kirana_network_mobile/screens/profile/profile_delete_screen/profile_delete_screen.dart';
import 'package:kirana_network_mobile/size_config.dart';

class ProfileAccountForm extends StatefulWidget {
  @override
  _ProfileAccountFormState createState() => _ProfileAccountFormState();
}

class _ProfileAccountFormState extends State<ProfileAccountForm> {
  final _formKey = GlobalKey<FormState>();
  late String firstName;
  late String lastName;
  String error = "";

  _ProfileAccountFormState() {
    final appState = sl<AppState>();
    firstName = appState.userProfile!.firstName;
    lastName = appState.userProfile!.lastName;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildFormField(
                onChanged: (newValue) => firstName = newValue,
                labelText: "First Name",
                hintText: "Enter your first name",
                initialValue: firstName),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildFormField(
                onChanged: (newValue) => lastName = newValue,
                labelText: "Last Name",
                hintText: "Enter your last name",
                initialValue: lastName),
            SizedBox(height: getProportionateScreenHeight(30)),
            error.isNotEmpty ? FormError(error: error) : Container(),
            SizedBox(height: getProportionateScreenHeight(30)),
            BigButton(
                text: "Save",
                onPressed: () {
                  KeyboardUtil.hideKeyboard(context);
                  _handleSave();
                }),
            SizedBox(height: getProportionateScreenHeight(30)),
            ElevatedButton(
                child: Text("Delete my account"),
                onPressed: () {
                  Navigator.pushNamed(context, ProfileDeleteScreen.routeName);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ))
          ],
        ));
  }

  TextFormField buildFormField(
      {required Function(String) onChanged,
      required String labelText,
      required String hintText,
      required String initialValue,
      bool enabled = true}) {
    return TextFormField(
      initialValue: initialValue,
      keyboardType: TextInputType.emailAddress,
      onChanged: onChanged,
      enabled: enabled,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  void _handleSave() {
    setState(() => this.error = "");
    final currentUserProfile = (sl<AppState>().userProfile)!;
    final model = UserProfileModel.fromJson({
      "id": currentUserProfile.id,
      "email": currentUserProfile.email,
      "firstName": firstName,
      "lastName": lastName
    });
    sl<UserprofilesApi>()
        .updateUserProfile(currentUserProfile.id, model)
        .then((userProfile) {
      sl<AppState>().userProfile = userProfile;
    }).catchError((dynamic exception) {
      setState(() => this.error = "An error occurred while saving");
    });
  }
}

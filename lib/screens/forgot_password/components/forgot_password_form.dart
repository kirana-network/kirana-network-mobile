import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/components/buttons.dart';
import 'package:kirana_network_mobile/helpers/keyboard.dart';
import 'package:kirana_network_mobile/size_config.dart';

class ForgotPasswordForm extends StatefulWidget {
  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            BigButton(
              text: "Reset Password",
              onPressed: () async {
                KeyboardUtil.hideKeyboard(context);
                await sendResetEmail();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Password reset email has been sent'),
                    action: SnackBarAction(
                      label: 'Okay',
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      },
                    ),
                  ),
                );
              },
            )
          ],
        ));
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onChanged: (newValue) => email = newValue,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  Future sendResetEmail() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    } catch (error) {
      print(error);
    }
  }
}

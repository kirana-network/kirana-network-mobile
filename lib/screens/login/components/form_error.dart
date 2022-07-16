import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/size_config.dart';
import 'package:kirana_network_mobile/theme.dart';

class FormError extends StatelessWidget {
  FormError({Key? key, required this.error}) : super(key: key);
  final String error;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(Icons.error_outline, color: errorColor),
      SizedBox(
        width: getProportionateScreenWidth(10),
      ),
      Text(error, style: TextStyle(color: errorColor)),
    ]);
  }
}

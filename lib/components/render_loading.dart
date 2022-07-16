import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kirana_network_mobile/theme.dart';

@Deprecated('see Loading')
Widget renderLoading() {
  return Container(
    child: SpinKitThreeBounce(
      color: accentColor,
      size: 50.0,
    ),
  );
}

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SpinKitThreeBounce(
        color: accentColor,
        size: 50.0,
      ),
    );
  }
}

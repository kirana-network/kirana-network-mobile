import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/size_config.dart';
import 'package:kirana_network_mobile/theme.dart';

class AppTopBar extends StatelessWidget implements PreferredSizeWidget {
  final String routeTitle;
  List<Widget> actions = [];
  AppTopBar({required this.routeTitle, required this.actions});

  @override
  Size get preferredSize => const Size.fromHeight(48);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryColor,
      centerTitle: false,
      elevation: 0,
      title: Text(
        "kirana-network ${routeTitle != "" ? '- ' + routeTitle : ""}",
        style: TextStyle(color: Colors.white),
      ),
      leading: Container(),
      leadingWidth: 0,
      actions: this.actions,
    );
  }
}

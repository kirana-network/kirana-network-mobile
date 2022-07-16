import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kirana_network_mobile/core/app_state.dart';
import 'package:kirana_network_mobile/injection_container.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final credential = sl<AppState>().authUserCredential;
    String photoUrl = credential?.user?.photoURL ?? "";

    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        children: [
          photoUrl.isNotEmpty
              ? CircleAvatar(
                  backgroundImage: NetworkImage(photoUrl),
                )
              : Icon(Icons.person, size: 100)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
// import 'package:portfolio_app/widgets/mac_win_dialog.dart';
// import 'package:url_launcher/url_launcher.dart';

import '../constants/app_theme.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'show_dialog_box.dart';

// ignore: must_be_immutable
class MyIcons extends StatelessWidget {
  String imagePath;
  String iconName;
  bool isBottomIcon;

  MyIcons({
    super.key,
    required this.imagePath,
    required this.iconName,
    required this.isBottomIcon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.amber,
      hoverColor: Colors.amber,
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return ShowDialogBox(iconName: iconName);
          },
        );
      },
      child: Column(
        children: [
          Card(
            child: Container(
              width: !isBottomIcon ? 70 : 50,
              height: !isBottomIcon ? 70 : 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          !isBottomIcon
              ? Text(
                  iconName,
                  style: normalText,
                )
              : const Text(''),
          // SizedBox(
          //   height: !widget.isBottomIcon ? 5 : 15,
          // )
        ],
      ),
    );
  }
}

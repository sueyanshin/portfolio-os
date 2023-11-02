import 'package:flutter/material.dart';
import 'package:portfolio_app/os/ios_os.dart';
import 'package:portfolio_app/utils/responsive.dart';
import 'package:portfolio_app/widgets/app_view.dart';
// import 'package:portfolio_app/widgets/mac_win_dialog.dart';
// import 'package:url_launcher/url_launcher.dart';
import '../constants/app_theme.dart';

import 'show_dialog_box.dart';

// ignore: must_be_immutable
class MyIcons extends StatelessWidget {
  String imagePath;
  String iconName;
  final bool? isBottomIcon;
  double? iconSize;

  MyIcons(
      {super.key,
      required this.imagePath,
      required this.iconName,
      this.isBottomIcon,
      this.iconSize});

  @override
  Widget build(BuildContext context) {
    // iconSize = !isBottomIcon! ? 70 : 50;
    return InkWell(
      splashColor: Colors.amber,
      hoverColor: Colors.amber,
      onTap: () {
        checkIconName(context);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            child: Container(
              width: iconSize,
              height: iconSize,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.contain),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          !isBottomIcon!
              ? Text(
                  iconName,
                  style: Responsive.isMobile(context)
                      ? mobileIconText
                      : normalText,
                )
              : const Text(''),
          // SizedBox(
          //   height: !widget.isBottomIcon ? 5 : 15,
          // )
        ],
      ),
    );
  }

  void checkIconName(BuildContext context) {
    switch (iconName) {
      case 'ios':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => IosOs(),
            ));
        break;
      case 'browser':
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    AppView(url: "https://bento.me/sueyanshin")));
        break;
      case 'Facebook':
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AppView(url: "https://facebook.com")));
        break;
      default:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => IosOs()));

        break;
    }
  }
  //  if (iconName == 'ios') {
  //   Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => IosOs(),
  //       ));
  // }
  // }
}

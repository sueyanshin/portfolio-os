import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/mac_app_bar.dart';
import 'package:portfolio_app/widgets/made_with_flutter.dart';
import 'package:portfolio_app/widgets/my_icons.dart';
import 'package:portfolio_app/constants/constants.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const MacAppBar(),
      body: Stack(children: [
        Positioned.fill(
            child: Image.asset(
          'assets/bgmac.jpg',
          fit: BoxFit.cover,
        )),

        // icons
        Positioned(
            top: 40,
            left: 20,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    MyIcons(
                      imagePath: 'assets/icon-flutter.jpg',
                      iconName: AppStrings.projects,
                      isBottomIcon: false,
                    ),
                    MyIcons(
                      imagePath: 'assets/icon-cv.png',
                      iconName: AppStrings.resume,
                      isBottomIcon: false,
                    ),
                    MyIcons(
                      imagePath: 'assets/icon-github.png',
                      iconName: AppStrings.github,
                      isBottomIcon: false,
                    ),
                    MyIcons(
                      imagePath: 'assets/icon-linkedin.png',
                      iconName: AppStrings.linkedIn,
                      isBottomIcon: false,
                    )
                  ],
                ),
                const SizedBox(width: 20),
                //2nd col
                Column(
                  children: [
                    MyIcons(
                      imagePath: 'assets/icon-fullscreen.png',
                      iconName: AppStrings.fullScreen,
                      isBottomIcon: false,
                    ),
                    MyIcons(
                      imagePath: 'assets/icon-win.png',
                      iconName: AppStrings.windowsMode,
                      isBottomIcon: false,
                    ),
                  ],
                ),
              ],
            )),

        //bottom bar

        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                const MadeWithFlutter(),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyIcons(
                      imagePath: 'icon-safari.png',
                      iconName: '',
                      isBottomIcon: true,
                    ),
                    MyIcons(
                      imagePath: 'icon-mail-m.png',
                      iconName: '',
                      isBottomIcon: true,
                    ),
                    MyIcons(
                      imagePath: 'icon-flutter.jpg',
                      iconName: '',
                      isBottomIcon: true,
                    ),
                    MyIcons(
                      imagePath: 'icon-cal-m.png',
                      iconName: '',
                      isBottomIcon: true,
                    ),
                    MyIcons(
                      imagePath: 'icon-contact-m.png',
                      iconName: '',
                      isBottomIcon: true,
                    ),
                  ],
                ),
              ],
            ))
      ]),
    );
  }
}

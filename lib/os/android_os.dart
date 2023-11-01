import 'package:portfolio_app/widgets/mobile_weather_card.dart';

import '../constants/constants.dart';
import '../widgets/made_with_flutter.dart';
import '../widgets/my_icons.dart';

class AndroidOs extends StatelessWidget {
  const AndroidOs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
            child: Image.asset(
          'assets/bg-android.jpg',
          fit: BoxFit.fitWidth,
        )),
        Positioned(
            top: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MobileWeatherCard(),
            )),
        Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  // 1 st row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyIcons(
                        imagePath: 'assets/icon-flutter.jpg',
                        iconName: AppStrings.projects,
                        isBottomIcon: false,
                        iconSize: 50,
                      ),
                      const SizedBox(width: 6),
                      MyIcons(
                        imagePath: 'assets/icon-cv.png',
                        iconName: AppStrings.resume,
                        isBottomIcon: false,
                        iconSize: 50,
                      ),
                      const SizedBox(width: 6),

                      MyIcons(
                        imagePath: 'assets/icon-github.png',
                        iconName: AppStrings.github,
                        isBottomIcon: false,
                        iconSize: 50,
                      ),
                      const SizedBox(width: 6),

                      MyIcons(
                        imagePath: 'assets/icon-linkedin.png',
                        iconName: AppStrings.linkedIn,
                        isBottomIcon: false,
                        iconSize: 50,
                      ),
                      // const SizedBox(width: 5),
                    ],
                  ),
                  // 2 nd row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyIcons(
                        imagePath: 'assets/icon-cal-a.png',
                        iconName: AppStrings.googleCalender,
                        isBottomIcon: false,
                        iconSize: 50,
                      ),
                      const SizedBox(width: 6),
                      MyIcons(
                        imagePath: 'assets/icon-facebook.png',
                        iconName: AppStrings.facebook,
                        isBottomIcon: false,
                        iconSize: 50,
                      ),
                      const SizedBox(width: 6),
                      MyIcons(
                        imagePath: 'assets/icon-twitter.jpeg',
                        iconName: AppStrings.x,
                        isBottomIcon: false,
                        iconSize: 50,
                      ),
                      const SizedBox(width: 6),
                      MyIcons(
                        imagePath: 'assets/icon-apple-dark.png',
                        iconName: AppStrings.ios,
                        isBottomIcon: false,
                        iconSize: 50,
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    // MyIcons(
                    //   imagePath: 'assets/icon-cal-a.png',
                    //   iconName: AppStrings.googleCalender,
                    //   isBottomIcon: false,
                    //   iconSize: 50,
                    // ),
                    // const SizedBox(width: 6),
                    MyIcons(
                      imagePath: 'assets/icon-buy-coffee.png',
                      iconName: AppStrings.buyCoffee,
                      isBottomIcon: false,
                      iconSize: 50,
                    ),
                  ]),
                ],
              ),
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
                      imagePath: 'assets/icon-phone-a.png',
                      iconName: '',
                      isBottomIcon: true,
                      iconSize: 50,
                    ),
                    const SizedBox(width: 10),
                    MyIcons(
                      imagePath: 'assets/icon-chrome.png',
                      iconName: '',
                      isBottomIcon: true,
                      iconSize: 50,
                    ),
                    const SizedBox(width: 10),
                    MyIcons(
                      imagePath: 'assets/icon-mail-a.png',
                      iconName: '',
                      isBottomIcon: true,
                      iconSize: 50,
                    ),
                    const SizedBox(width: 10),
                    MyIcons(
                      imagePath: 'assets/icon-contact-a.png',
                      iconName: '',
                      isBottomIcon: true,
                      iconSize: 50,
                    ),
                  ],
                ),
              ],
            ))
      ]),
    );
  }
}

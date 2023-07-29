import 'package:flutter/material.dart';
import 'package:portfolio_app/values/colors.dart';
import 'package:portfolio_app/widgets/my_icons.dart';
import 'package:intl/intl.dart';

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();
    String formattedDate = DateFormat("MMM d hh:mm a").format(date);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.black,
        leading: Image.asset('assets/icon-apple.png'),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(children: [
            Text(
              'Nge Sue',
              style: normalText,
            ),
            SizedBox(width: 20),
            Text(
              'About Me',
              style: normalText,
            ),
            SizedBox(width: 20),
            Text(
              'Contact',
              style: normalText,
            ),
            SizedBox(width: 20),
            Text(
              'My Projects',
              style: normalText,
            ),
          ]),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  color: Colors.white,
                  child: const Text(
                    'en',
                    style: TextStyle(
                        backgroundColor: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Text(
                  formattedDate,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
      body: Stack(children: [
        Positioned.fill(
            child: Image.asset(
          'assets/bgmac.jpg',
          fit: BoxFit.cover,
        )),

        // icons
        Positioned(
            top: 10,
            left: 20,
            child: Column(
              children: [
                MyIcons(
                  imagePath: 'assets/icon-flutter.jpg',
                  iconName: 'Projects',
                  isBottomIcon: false,
                ),
                MyIcons(
                  imagePath: 'assets/icon-cv.png',
                  iconName: 'Resume',
                  isBottomIcon: false,
                ),
                MyIcons(
                  imagePath: 'assets/icon-github.png',
                  iconName: 'Github',
                  isBottomIcon: false,
                ),
                MyIcons(
                  imagePath: 'assets/icon-linkedin.png',
                  iconName: 'Linkedin',
                  isBottomIcon: false,
                )
              ],
            )),

        //bottom bar

        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyIcons(
                    imagePath: 'icon-safari.png',
                    iconName: '',
                    isBottomIcon: true),
                MyIcons(
                    imagePath: 'icon-mail-m.png',
                    iconName: '',
                    isBottomIcon: true),
                MyIcons(
                    imagePath: 'icon-flutter.jpg',
                    iconName: '',
                    isBottomIcon: true),
                MyIcons(
                    imagePath: 'icon-cal-m.png',
                    iconName: '',
                    isBottomIcon: true),
                MyIcons(
                    imagePath: 'icon-contact-m.png',
                    iconName: '',
                    isBottomIcon: true),
              ],
            ))
      ]),
    );
  }
}

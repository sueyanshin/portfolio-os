import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/mac_win_dialog.dart';

import '../values/colors.dart';

// ignore: must_be_immutable
class MyIcons extends StatefulWidget {
  String imagePath;
  String iconName;
  bool isBottomIcon;
  MyIcons(
      {super.key,
      required this.imagePath,
      required this.iconName,
      required this.isBottomIcon});

  @override
  State<MyIcons> createState() => _MyIconsState();
}

class _MyIconsState extends State<MyIcons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              MacWinDialog(
                  title: 'Title',
                  message: 'lov u',
                  onConfirm: Navigator.of(context).pop);
            });
          },
          onDoubleTap: () {
            MacWinDialog(
                title: 'Title',
                message: 'lov u',
                onConfirm: Navigator.of(context).pop);
          },
          child: Card(
            child: Container(
              width: !widget.isBottomIcon ? 70 : 50,
              height: !widget.isBottomIcon ? 70 : 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imagePath), fit: BoxFit.cover),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ),
        !widget.isBottomIcon
            ? Text(
                widget.iconName,
                style: normalText,
              )
            : const Text(''),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}

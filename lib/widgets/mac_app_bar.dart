import 'package:flutter/material.dart';
import 'package:portfolio_app/models/clock_model.dart';
import 'package:provider/provider.dart';
import '/constants/theme.dart';

class MacAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MacAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final clockModel = Provider.of<ClockModel>(context);
    return AppBar(
      toolbarHeight: 30,
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(children: [
          Image.asset(
            'assets/icon-apple.png',
            width: 25,
          ),
          const SizedBox(width: 20),
          const Text(
            'Nge Sue',
            style: normalText,
          ),
          const SizedBox(width: 20),
          const Text(
            'About Me',
            style: normalText,
          ),
          const SizedBox(width: 20),
          const Text(
            'Contact',
            style: normalText,
          ),
          const SizedBox(width: 20),
          const Text(
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
                width: 25,
                height: 22,
                alignment: Alignment.center,
                // padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: const Text(
                  'en',
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                clockModel.formattedDate,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(30.0);
}

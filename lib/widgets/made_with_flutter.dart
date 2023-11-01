import 'package:flutter/material.dart';
import 'package:portfolio_app/constants/theme.dart';

class MadeWithFlutter extends StatelessWidget {
  const MadeWithFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icon-f.png',
          width: 20,
        ),
        const SizedBox(width: 5),
        const Text(
          ' Made with',
          style: normalText,
        ),
        const SizedBox(width: 5),
        const Text(
          'Flutter',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

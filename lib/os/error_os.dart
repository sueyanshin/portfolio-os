import 'package:flutter/material.dart';

class ErrorOs extends StatelessWidget {
  const ErrorOs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'This OS on mobile browser is under development.\n Please try it on larger screen.',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.lightGreen),
        ),
      )),
    );
  }
}

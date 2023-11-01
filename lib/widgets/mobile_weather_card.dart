import 'package:flutter/material.dart';
import 'package:portfolio_app/constants/app_colors.dart';

class MobileWeatherCard extends StatelessWidget {
  const MobileWeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      color: AppColors.transparentAppBar,
      child: Row(
        children: [Text('hello')],
      ),
    );
  }
}

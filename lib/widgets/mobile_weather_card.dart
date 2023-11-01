import 'package:flutter/material.dart';
import 'package:portfolio_app/constants/app_colors.dart';
import 'package:portfolio_app/constants/constants.dart';

class MobileWeatherCard extends StatelessWidget {
  const MobileWeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.transparentAppBar,
          borderRadius: BorderRadius.circular(12)),
      width: MediaQuery.of(context).size.width / 1.05,
      height: 120,
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // left col
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.sunny,
                  size: 30,
                  color: AppColors.white,
                ),
                Text(
                  '23°',
                  style: bigDegNum,
                ),
                Text(
                  '23°',
                  style: smallDegNum,
                ),
              ],
            ),
            // right col
            Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Yangon',
                  style: cityName,
                ),
                Text(
                  'Clear',
                  style: weatherInfo,
                ),

                // 5 days
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          '23°',
                          style: smallDegNum,
                        ),
                        Icon(
                          Icons.sunny,
                          size: 18,
                          color: Colors.white,
                        ),
                        Text(
                          '23°',
                          style: tinyDegNum,
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(children: [
                      Text(
                        '23°',
                        style: smallDegNum,
                      ),
                      Icon(
                        Icons.sunny,
                        size: 18,
                        color: Colors.white,
                      ),
                      Text(
                        '23°',
                        style: tinyDegNum,
                      ),
                    ]),
                    const SizedBox(width: 10),
                    Column(children: [
                      Text(
                        '23°',
                        style: smallDegNum,
                      ),
                      Icon(
                        Icons.sunny,
                        size: 18,
                        color: Colors.white,
                      ),
                      Text(
                        '23°',
                        style: tinyDegNum,
                      ),
                    ]),
                    const SizedBox(width: 10),
                    Column(children: [
                      Text(
                        '23°',
                        style: smallDegNum,
                      ),
                      Icon(
                        Icons.sunny,
                        size: 18,
                        color: Colors.white,
                      ),
                      Text(
                        '23°',
                        style: tinyDegNum,
                      ),
                    ])
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

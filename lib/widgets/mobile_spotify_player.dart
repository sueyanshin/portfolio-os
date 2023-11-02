import 'package:lottie/lottie.dart';
import 'package:portfolio_app/constants/constants.dart';

class MobileSpotifyPlayer extends StatelessWidget {
  const MobileSpotifyPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.transparentAppBar,
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            //left col
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //playing spotify
                Lottie.asset('assets/spotify.json',
                    width: 50, fit: BoxFit.contain),

                // stopped spotify
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(12),
                //   child:
                //   Image.asset(
                //     'assets/icon-spotify.png',
                //     width: 50,
                //   ),
                // ),
                const Text(
                  AppStrings.mariposa,
                  style: songName,
                ),
                const Text(
                  AppStrings.artist,
                  style: artistName,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        backgroundColor: Colors.green),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.play_arrow,
                          size: 15,
                          color: Colors.white,
                        ),
                        Text(
                          AppStrings.play,
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ],
                    ))
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/img-mariposa.jpg',
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

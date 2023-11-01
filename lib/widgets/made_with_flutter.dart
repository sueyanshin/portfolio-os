import 'package:portfolio_app/constants/constants.dart';
import 'package:portfolio_app/utils/responsive.dart';

class MadeWithFlutter extends StatelessWidget {
  const MadeWithFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icon-f.png',
          width: Responsive.isMobile(context) ? 10 : 20,
        ),
        const SizedBox(width: 5),
        Text(
          ' Made with',
          style: Responsive.isMobile(context) ? madeWithText : normalText,
        ),
        const SizedBox(width: 5),
        const Text(
          'Flutter',
          style: flutterText,
        )
      ],
    );
  }
}

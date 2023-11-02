import 'package:portfolio_app/constants/constants.dart';
// import 'package:webview_flutter/webview_flutter.dart';

import 'show_dialog_box.dart';

class AppView extends StatefulWidget {
  final String url;

  const AppView({super.key, required this.url});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Responsive.isMobile(context)
            ? Stack(
                children: [
                  // WebView(
                  //   initialUrl: widget.url,
                  //   javascriptMode: JavascriptMode.unrestricted,
                  //   initialMediaPlaybackPolicy:
                  //       AutoMediaPlaybackPolicy.always_allow,
                  //   onPageFinished: (String url) {
                  //     print('Page finished loading: $url');

                  //     setState(() {
                  //       isLoading = false;
                  //     });
                  //   },
                  // ),

                  const Center(
                    child: CircularProgressIndicator(),
                  )
                ],
              )
            : ShowDialogBox(url: widget.url));
  }
}

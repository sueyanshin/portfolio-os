import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ShowDialogBox extends StatelessWidget {
  String url;
  ShowDialogBox({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(url),
      content: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: 300, // Adjust the height as needed

        // child: Text("Hello"),
        child: WebView(
          initialUrl: url, // Replace with your URL
          javascriptMode: JavascriptMode.unrestricted,
          userAgent:
              'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36',
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}

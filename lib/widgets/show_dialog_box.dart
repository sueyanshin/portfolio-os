import 'package:flutter/material.dart';

class ShowDialogBox extends StatelessWidget {
  String iconName;
  ShowDialogBox({super.key, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(iconName),
      content: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: 300, // Adjust the height as needed

        child: Text("Hello"),
        // child: WebView(
        //   initialUrl: 'https://github.com', // Replace with your URL
        //   javascriptMode: JavascriptMode.unrestricted,
        // ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Close'),
        ),
      ],
    );
  }
}

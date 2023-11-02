import 'package:flutter/material.dart';
import 'package:portfolio_app/models/clock_model.dart';
import 'package:portfolio_app/os/android_os.dart';
import 'package:portfolio_app/os/mac_os.dart';
import 'package:portfolio_app/utils/responsive.dart';
import 'package:provider/provider.dart';
// import 'package:portfolio_app/widgets/register_web_webview_stub.dart'
//     if (dart.library.html) 'package:portfolio_app/widgets/register_web_webview.dart';

void main() {
  // registerWebViewWebImplementation();
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => ClockModel())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sue Yan Shin',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Responsive.isMobile(context) ? const AndroidOs() : const MacOs(),
    );
  }
}

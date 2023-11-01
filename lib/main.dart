import 'package:flutter/material.dart';
import 'package:portfolio_app/models/clock_model.dart';
import 'package:portfolio_app/os/desktop.dart';
import 'package:portfolio_app/os/error_os.dart';
import 'package:portfolio_app/utils/responsive.dart';
import 'package:provider/provider.dart';

void main() {
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
      home: Responsive.isMobile(context) ? const ErrorOs() : const Desktop(),
    );
  }
}

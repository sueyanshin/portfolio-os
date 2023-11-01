import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class ClockModel with ChangeNotifier {
  DateTime _currentTime = DateTime.now();
  String get formattedDate =>
      DateFormat("EE, MMM d   hh:mm a").format(_currentTime);

  Timer? _timer;

  ClockModel() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      updateClock();
    });
  }

  void updateClock() {
    _currentTime = DateTime.now();
    notifyListeners();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

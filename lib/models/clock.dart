import 'package:intl/intl.dart';
import 'dart:async';

class Clock {
  DateTime currentTime = DateTime.now();
  String formattedDate = DateFormat("MMM d hh:mm a").format(DateTime.now());
  late Timer timer;

  Clock() {
    // Start a timer that updates the clock every second
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      updateClock();
    });
  }
  void updateClock() {
    currentTime = DateTime.now();
    formattedDate = DateFormat("MMM d hh:mm a").format(currentTime);
  }
}

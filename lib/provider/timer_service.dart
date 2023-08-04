import 'dart:async';

import 'package:flutter/material.dart';

import 'timer_service_provider.dart';

class TimerService extends ChangeNotifier {
  // Timer Service
  // The usual timer
  Timer? _timer;

  Duration get currentDuration => _currentDuration;
  Duration _currentDuration = Duration.zero;

  bool get isRunning => _timer != null;

  void setDuration(Duration duration) {
    _currentDuration = duration;
  }

  void _logOut(Timer timer) {
    stop();
    notifyListeners();
  }

  void start() {
    if (_timer != null) return;

    _timer = Timer.periodic(
      _currentDuration,
      _logOut,
    );
  }

  void stop() {
    _timer?.cancel();
    _timer = null;
  }

  void reset() {
    stop();
    start();
  }

  static TimerService of(BuildContext context) {
    final TimerServiceProvider? provider =
        context.dependOnInheritedWidgetOfExactType<TimerServiceProvider>();
    return provider?.service ?? TimerService();
  }
}

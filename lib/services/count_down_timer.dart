import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

class CountDownTimer {
  final Function() onComplete;
  final int initCounter;
  final BuildContext context;
  StreamController<int> controller = StreamController<int>();
  Timer? _timer;
  late int _currentCounter;

  CountDownTimer(
    this.context, {
    required this.onComplete,
    required this.initCounter,
  }) {
    reset();
  }

  void pause() {
    _timer?.cancel();
  }

  void resume() {
    final isActive = _timer?.isActive ?? false;
    if (!isActive) {
      start();
    }
  }

  void dispose() {
    _timer?.cancel();
    controller.close();
  }

  void reset() {
    controller.add(initCounter);
    _currentCounter = initCounter;
  }

  void resetAndResume() {
    reset();
    resume();
  }

  void start() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _currentCounter--;
      controller.add(_currentCounter);
      if (_currentCounter == 0) {
        onComplete();
      }
    });
  }
}

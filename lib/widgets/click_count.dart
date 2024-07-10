import 'dart:async';

import 'package:flutter/material.dart';

class ClickCount extends StatefulWidget {
  final int count;
  final Function() onCalled;
  final Widget child;
  const ClickCount(
      {super.key,
      required this.child,
      required this.onCalled,
      required this.count});

  @override
  State<ClickCount> createState() => _ClickCountState();
}

class _ClickCountState extends State<ClickCount> {
  Timer? _timer;
  int _clickCount = 0;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _clickCount++;

        _timer?.cancel();
        _timer = Timer(const Duration(seconds: 2), () {
          _clickCount = 0;
        });

        if (_clickCount == widget.count) {
          widget.onCalled();
          // ref.read(authNotifierProvider.notifier).signout();
          // print('click5번함');
        }
      },
      child: widget.child,
    );
  }
}

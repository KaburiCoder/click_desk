import 'dart:async';

import 'package:click_recept/routes/nav.dart';
import 'package:click_recept/routes/route_provider.dart';
import 'package:click_recept/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimeoutTimerLayout extends ConsumerStatefulWidget {
  final Widget child;
  final int seconds;
  const TimeoutTimerLayout({
    super.key,
    required this.child,
    this.seconds = 30,
  });

  @override
  ConsumerState<TimeoutTimerLayout> createState() => _TimeoutTimerState();
}

class _TimeoutTimerState extends ConsumerState<TimeoutTimerLayout>
    with WidgetsBindingObserver, RouteAware {
  Timer? _timer;
  int _counter = 30;
  bool _isActive = true;
  final FocusNode _focusNode = FocusNode();

  void clear() {}
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)! as PageRoute);
  }

  @override
  void didPush() {}

  @override
  void didPop() {
    _clearAndPauseTimer();
  }

  @override
  void didPushNext() {
    _clearAndPauseTimer();
  }

  @override
  void didPopNext() {
    _resumeTimer();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _startTimer();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    _resetCounter();
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    WidgetsBinding.instance.removeObserver(this);
    _timer?.cancel();
    _focusNode.dispose();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_isActive) {
        setState(() {
          if (_counter == 0) {
            Nav.of(context).goMain();
          }
          _counter--;
        });
      }
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive) {
      _pauseTimer();
    } else if (state == AppLifecycleState.resumed) {
      _resumeTimer();
    }
  }

  void _resetCounter() {
    _counter = widget.seconds;
  }

  void _clearAndPauseTimer() {
    _resetCounter();
    _pauseTimer();
  }

  void _pauseTimer() {
    _isActive = false;
  }

  void _resumeTimer() {
    _isActive = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Focus(
            focusNode: _focusNode,
            child: Listener(
              onPointerDown: (event) {
                _resetCounter();
              },
              child: widget.child,
            ),
          ),
          Positioned(
            top: 2,
            right: 2,
            child: CircleAvatar(
              minRadius: 16,
              backgroundColor: Colors.lightBlue,
              child: CircleAvatar(
                backgroundColor: Colors.lightBlueAccent,
                minRadius: 12,
                child: Center(
                  child: BaseText(
                    '$_counter',
                    fontSize: 10,                    
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

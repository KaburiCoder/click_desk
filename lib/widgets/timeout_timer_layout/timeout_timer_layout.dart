import 'package:click_desk/shared/providers/pointer/pointer_provider.dart';
import 'package:click_desk/routes/nav.dart';
import 'package:click_desk/routes/route_provider.dart';
import 'package:click_desk/shared/providers/shared_utiltiy/shared_utility_provider.dart';
import 'package:click_desk/widgets/timeout_timer_layout/lib/count_down_timer.dart';
import 'package:click_desk/widgets/sized_scaffold.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
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
  late CountDownTimer _timer;
  final FocusNode _focusNode = FocusNode();

  void clear() {}

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    final sharedUtil = ref.read(sharedUtilityProvider);
    int seconds = sharedUtil.getTimerSeconds();
    seconds = seconds > widget.seconds ? seconds : widget.seconds;

    _timer = CountDownTimer(context, onComplete: () {
      if (context.mounted) Nav.of(context).goMain();
    }, initCounter: seconds);
    _timer.start();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    _timer.reset();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)! as PageRoute);
  }

  @override
  void didPush() {}

  @override
  void didPop() {
    _timer.pause();
  }

  @override
  void didPushNext() {
    _timer.pause();
  }

  @override
  void didPopNext() {
    _timer.resetAndResume();
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    WidgetsBinding.instance.removeObserver(this);
    _timer.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive) {
      _timer.pause();
    } else if (state == AppLifecycleState.resumed) {
      _timer.resume();
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      pointerProvider,
      (previous, next) {
        if (previous != next) {
          _timer.reset();
        }
      },
    );
    return SizedScaffold(
      child: Stack(
        children: [
          Focus(
            focusNode: _focusNode,
            child: widget.child,
          ),
          Positioned(
            top: 2,
            right: 2,
            child: CircleAvatar(
              minRadius: 16,
              backgroundColor: Colors.lightBlue[200],
              child: CircleAvatar(
                backgroundColor: Colors.white60,
                minRadius: 12,
                child: Center(
                  child: StreamBuilder<int>(
                      stream: _timer.controller.stream,
                      builder: (context, snapshot) {
                        return BaseText(
                          '${snapshot.data}',
                          fontSize: 10,
                        );
                      }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

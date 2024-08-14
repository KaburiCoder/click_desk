import 'package:click_desk/shared/utils/widget_util.dart';
import 'package:flutter/material.dart';

class SizedScaffold extends StatelessWidget {
  final Widget child;
  const SizedScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final size = getScreenSize(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: child,
          ),
        ),
      ),
    );
  }
}

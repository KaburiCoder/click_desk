import 'package:flutter/material.dart';

class RightContainer extends StatelessWidget {
  final Widget child;
  final double? height;
  final EdgeInsets padding;
  const RightContainer({
    super.key,
    required this.child,
    this.height,
    this.padding = const EdgeInsets.all(30),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.white,
                Colors.blue[100] ?? Colors.blue,
              ]),
        ),
        child: child);
  }
}

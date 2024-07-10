import 'package:flutter/material.dart';

class WidthSpacer extends StatelessWidget {
  final double? width;

  const WidthSpacer([
    this.width = 8.0,
    Key? key,
  ]) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}

class HeightSpacer extends StatelessWidget {
  final double height;
  const HeightSpacer([
    this.height = 8.0,
    Key? key,
  ]) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}

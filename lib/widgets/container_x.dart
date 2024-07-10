import 'package:flutter/material.dart';

class ContainerX extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsets? margin;
  final BoxBorder? border;
  const ContainerX({
    super.key,
    required this.child,
    this.color,
    this.margin,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      margin: margin,
      decoration: BoxDecoration(
        color: color,
        border: border,
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }
}

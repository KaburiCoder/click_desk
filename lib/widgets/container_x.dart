import 'package:flutter/material.dart';

class ContainerX extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsets? margin;
  final BoxBorder? border;
  final BoxConstraints? constraints;
  
  const ContainerX({
    super.key,
    required this.child,
    this.color,
    this.margin,
    this.border,
    this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      margin: margin,
      constraints: constraints,
      decoration: BoxDecoration(
        color: color,
        border: border,
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }
}

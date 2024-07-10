import 'package:flutter/material.dart';

class InhancedColumn extends StatelessWidget {
  final List<Widget> children;
  final Color? color;
  final int? flex;
  const InhancedColumn({
    super.key,
    required this.children,
    this.color,
    this.flex,
  });

  @override
  Widget build(BuildContext context) {
    Widget column = Container(
      color: color,
      child: Column(
        children: children,
      ),
    );

    if (flex != null) {
      column = Expanded(flex: flex!, child: column);
    }

    return column;
  }
}

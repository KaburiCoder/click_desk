import 'package:click_desk/widgets/label.dart';
import 'package:flutter/material.dart';

class LabeldRow extends StatelessWidget {
  final String text;
  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;
  const LabeldRow({
    super.key,
    required this.children,
    required this.text,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Center(child: Label(text)),
        ...children,
      ],
    );
  }
}

class LabeldColumn extends StatelessWidget {
  final String text;
  final List<Widget> children;
  const LabeldColumn({
    super.key,
    required this.children,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Label(text),
        ...children,
      ],
    );
  }
}

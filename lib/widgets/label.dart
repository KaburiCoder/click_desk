import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final String text;
  const Label(
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(minWidth: 200),
        child: BaseText(text, fontSize: 30, bold: true));
  }
}

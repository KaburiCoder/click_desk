import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

class GreyText extends StatelessWidget {
  final String text;
  final bool bold;

  const GreyText(this.text, {super.key, this.bold = false});

  @override
  Widget build(BuildContext context) {
    return BaseText(
      text,
      bold: bold,
      fontSize: 16,
      color: Colors.grey,
    );
  }
}

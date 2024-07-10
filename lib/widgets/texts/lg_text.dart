import 'package:click_recept/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

class LgText extends StatelessWidget {
  final String text;
  final bool bold;
  final Color? color;
  const LgText(this.text,
      {super.key, this.bold = false, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return BaseText(
      text,
      bold: bold,
      fontSize: 30,
      color: color,
    );
  }
}

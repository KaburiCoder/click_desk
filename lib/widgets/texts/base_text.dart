import 'package:click_desk/constants/font_family.dart';
import 'package:flutter/material.dart';

class BaseText extends StatelessWidget {
  final String text;
  final bool bold;
  final Color? color;
  final double fontSize;
  final String fontFamily;
  final int? maxLines;
  const BaseText(this.text,
      {super.key,
      this.bold = false,
      this.color = Colors.black,
      this.fontSize = 16,
      this.fontFamily = FontFamily.nanumSquareRound,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: TextStyle(
        fontFamily: fontFamily,
        fontWeight: bold ? FontWeight.bold : null,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}

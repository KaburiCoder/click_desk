import 'package:click_desk/shared/constants/font_family.dart';
import 'package:flutter/material.dart';

class BaseText extends StatelessWidget {
  final String text;
  final bool bold;
  final Color? color;
  final double fontSize;
  final String fontFamily;
  final int? maxLines;
  final TextDecoration? decoration;
  final EdgeInsetsGeometry? padding;
  final Paint? foreground;
  const BaseText(
    this.text, {
    super.key,
    this.bold = false,
    this.color,
    this.fontSize = 16,
    this.fontFamily = FontFamily.nanumSquareRound,
    this.maxLines,
    this.decoration,
    this.padding,
    this.foreground,
  });

  @override
  Widget build(BuildContext context) {
    final textWidget = Text(
      text,
      maxLines: maxLines,
      style: TextStyle(
          fontFamily: fontFamily,
          fontWeight: bold ? FontWeight.bold : null,
          fontSize: fontSize,
          color: color,
          foreground: foreground,
          decoration: decoration),
    );

    if (padding != null) {
      return Padding(
        padding: padding!,
        child: textWidget,
      );
    }
    return textWidget;
  }
}

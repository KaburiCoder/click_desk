import 'package:click_desk/shared/constants/font_family.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

class XlHanbitText extends StatelessWidget {
  final String text;
  final Color? color;
  const XlHanbitText(
    this.text, {
    super.key,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return BaseText(
      text,
      fontFamily: FontFamily.kccHanbit,
      bold: true,
      fontSize: 40,
      color: color,
    );
  }
}

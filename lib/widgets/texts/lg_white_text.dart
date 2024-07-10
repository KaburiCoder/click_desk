import 'package:click_recept/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

class LgWhiteText extends StatelessWidget {
  final String text;
  final bool bold;
  const LgWhiteText({super.key, required this.text, this.bold = false});

  @override
  Widget build(BuildContext context) {
    return BaseText(
      text,
      color: Colors.white,
      bold: bold,
      fontSize: 30,
    );
  }
}

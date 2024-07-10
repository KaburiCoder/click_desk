import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  final String text;
  final Color color;
  const ChipWidget({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: color, width: 2),
      ),
      child: BaseText(text, color: color),
    );
  }
}

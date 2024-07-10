import 'package:click_recept/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

class ReceiveInfoRow extends StatelessWidget {
  final String title;
  final String text;
  final int? maxLines;
  const ReceiveInfoRow({
    super.key,
    required this.title,
    required this.text,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            constraints: const BoxConstraints(minWidth: 180),
            child: BaseText(title, fontSize: 30, bold: true)),
        Expanded(
          child: BaseText(
            text,
            fontSize: 30,
            color: Colors.black54,
            maxLines: maxLines,
          ),
        ),
      ],
    );
  }
}

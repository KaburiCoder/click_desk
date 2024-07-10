import 'package:click_recept/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

class HeadMiniText extends StatelessWidget {
  final Color color;
  const HeadMiniText({
    super.key,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 28),
      child: Row(
        children: [
          BaseText(
            "ClickSoft",
            fontSize: 18,
            color: color,
            bold: true,
          ),
          const SizedBox(width: 15),
          BaseText(
            "병.의원 전문 소프트웨어 업체",
            fontSize: 12,
            color: color,
          )
        ],
      ),
    );
  }
}

import 'package:click_recept/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

class ChoiceCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final Widget lottie;
  final Function() onClick;

  const ChoiceCard({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.lottie,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 550),
        child: Card(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: lottie,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BaseText(text1, fontSize: 24),
                    BaseText(text2, fontSize: 30, bold: true),
                    BaseText(text3, fontSize: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

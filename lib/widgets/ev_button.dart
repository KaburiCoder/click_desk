import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

class EvButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final double minWidth;
  final double minHeight;
  final bool isLoading;
  final Color backgroundColor;
  const EvButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isLoading = false,
    this.minWidth = 300,
    this.minHeight = 65,
    this.backgroundColor = Colors.black38,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(minWidth, minHeight),
        backgroundColor: backgroundColor,
      ),
      onPressed: isLoading ? null : onPressed,
      child: IntrinsicWidth(
        child: Row(
          children: [
            if (isLoading)
              Container(
                  margin: const EdgeInsets.only(right: 24),
                  child: const CircularProgressIndicator()),
            BaseText(text, fontSize: 24, color: Colors.white),
          ],
        ),
      ),
    );
  }
}

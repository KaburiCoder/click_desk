import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Function()? onPressed;
  final Color? backButtonColor;
  final IconData icon;
  const RoundIconButton({
    super.key,
    required this.backButtonColor,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(24),
        backgroundColor: backButtonColor,
      ),
      child: Icon(
        size: 30,
        icon,
        color: Colors.red[50], // 아이콘 색상
      ),
    );
  }
}

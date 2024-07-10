import 'package:flutter/material.dart';

class HintInput extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool obscureText;
  const HintInput({
    super.key,
    required this.controller,
    required this.hint,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      child: TextField(
        controller: controller,
        style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        readOnly: true,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.black12),
          border: InputBorder.none,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

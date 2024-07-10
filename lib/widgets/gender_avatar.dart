import 'package:flutter/material.dart';

class GenderAvatar extends StatelessWidget {
  const GenderAvatar({
    super.key,
    required this.isWoman,
  });

  final bool isWoman;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: isWoman ? Colors.redAccent : Colors.blueAccent,
      child: Icon(
        isWoman ? Icons.female : Icons.male,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}

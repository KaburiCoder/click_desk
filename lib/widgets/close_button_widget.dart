import 'package:click_desk/routes/nav.dart';
import 'package:flutter/material.dart';

class CloseButtonWidget extends StatelessWidget {
  final double? size;
  final double top;
  final double right;
  const CloseButtonWidget({
    super.key,
    this.size,
    this.top = 0,
    this.right = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top, // 위쪽에서의 거리
      right: right, // 오른쪽에서의 거리
      child: IconButton(
        icon: Icon(Icons.close, size: size),
        onPressed: () {
          Nav.of(context).pop();
        },
      ),
    );
  }
}

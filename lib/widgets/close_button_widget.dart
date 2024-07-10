import 'package:click_recept/routes/nav.dart';
import 'package:flutter/material.dart';

class CloseButtonWidget extends StatelessWidget {
  const CloseButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0, // 위쪽에서의 거리
      right: 0, // 오른쪽에서의 거리
      child: IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          Nav.of(context).pop();
        },
      ),
    );
  }
}

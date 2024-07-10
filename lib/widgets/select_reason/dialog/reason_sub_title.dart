import 'package:click_desk/widgets/close_button_widget.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

class ReasonSubTitle extends StatelessWidget {
  const ReasonSubTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8),
          child: const BaseText(
            "세부 내원사유를 선택해주세요.",
            color: Colors.grey,
            fontSize: 24,
          ),
        ),
        const CloseButtonWidget(),
      ],
    );
  }
}

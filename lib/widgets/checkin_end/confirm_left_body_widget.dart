import 'package:click_recept/constants/font_family.dart';
import 'package:click_recept/constants/lottie_paths.dart';
import 'package:click_recept/widgets/lottie.dart';
import 'package:click_recept/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

class ConfirmLeftBodyWidget extends StatelessWidget {
  const ConfirmLeftBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 300,
          child: LottieAnimation(
            LottiePaths.checkNote,
            duration: 3000,
            forward: true,
          ),
        ),
        infoText("접수하신 정보를 확인 후"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            infoText("'접수하기' ", highlight: true),
            infoText("버튼을"),
          ],
        ),
        infoText("눌러주세요!"),
      ],
    );
  }

  BaseText infoText(String text, {bool highlight = false}) {
    return BaseText(
      text,
      fontSize: 40,
      bold: true,
      fontFamily: FontFamily.kccHanbit,
      color: highlight ? Colors.blue : null,
    );
  }
}

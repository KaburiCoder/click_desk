import 'package:click_recept/widgets/left_wrapper.dart';
import 'package:click_recept/widgets/spacer.dart';
import 'package:click_recept/widgets/texts/xl_text.dart';
import 'package:flutter/material.dart';

class LeftReasonWidget extends StatelessWidget {
  const LeftReasonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LeftWrapper(
      flex: 4,
      logoTextColor: Colors.indigo[600]!,
      backgroundColor: Colors.white,
      showNavButtons: true,
      navButtonColor: Colors.blue[300],
      bodyWidget: const Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LeftWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                XlHanbitText("내원사유", color: Colors.blue),
                XlHanbitText("를"),
              ],
            ),
            HeightSpacer(),
            XlHanbitText("선택해주세요."),
          ],
        ),
      ),
    );
  }
}

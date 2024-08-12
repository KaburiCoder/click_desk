import 'package:click_desk/widgets/common_left_body.dart';
import 'package:click_desk/widgets/left_wrapper.dart';
import 'package:click_desk/widgets/lottie.dart';
import 'package:flutter/material.dart';

class CheckinWrapper extends StatelessWidget {
  final List<String> titles;
  final Widget keyPad;
  final String lottiePath;
  const CheckinWrapper({
    super.key,
    required this.titles,
    required this.keyPad,
    required this.lottiePath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LeftWrapper(
          backgroundColor: Colors.teal[300],
          navButtonColor: Colors.teal,
          bodyWidget: CommonLeftBody(
            title1: titles[0],
            title2: titles[1],
            bodyWidget: Align(
              alignment: Alignment.centerRight,
              child: LottieAnimation(
                lottiePath,
                duration: 5000,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: keyPad,
        )
      ],
    );
  }
}

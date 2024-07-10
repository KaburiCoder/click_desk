import 'dart:async';

import 'package:click_desk/constants/lottie_paths.dart';
import 'package:click_desk/routes/nav.dart';
import 'package:click_desk/widgets/lottie.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:click_desk/widgets/texts/xl_text.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatefulWidget {
  final bool isConsented;
  const SuccessPage({super.key, required this.isConsented});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  int _remainingSeconds = 5;

  void _startTimer() {
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
          _remainingSeconds--;

          if (_remainingSeconds == 0) {
            timer.cancel();
            Nav.of(context).goMain();
          }
        });
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const XlHanbitText("성공적으로 접수됐습니다."),
          const HeightSpacer(40.0),
          LottieAnimation(
            LottiePaths.congratulations,
            duration: 5000,
          ),
          const HeightSpacer(40.0),
          XlHanbitText(
            widget.isConsented
                ? "대기실에서 기다리시면 불러드릴게요."
                : "본인인증을 위해 신분증을 가지고 카운터로 와주세요.",
            color: Colors.blueAccent,
          ),
          const HeightSpacer(40.0),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 20.0)),
            icon: const Icon(Icons.home),
            label: BaseText("메인화면으로 (${_remainingSeconds}s)"),
            onPressed: Nav.of(context).goMain,
          ),
        ],
      ),
    );
  }
}

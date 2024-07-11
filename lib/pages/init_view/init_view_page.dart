import 'package:click_desk/constants/lottie_paths.dart';
import 'package:click_desk/widgets/lottie.dart';
import 'package:flutter/material.dart';

class InitViewPage extends StatelessWidget {
  const InitViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            LottieAnimation(LottiePaths.congratulations, duration: 3000),
            const Text("하하 시작 대기화면"),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

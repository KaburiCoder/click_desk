import 'package:flutter/material.dart';
import 'package:click_desk/shared/constants/image_paths.dart';
import 'package:click_desk/widgets/upgrade_ko_alert/upgrade_ko_alert.dart';

class InitViewPage extends StatelessWidget {
  const InitViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 기존 build 메서드 내용
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Image.asset(ImagePaths.clickSoftLogo),
          ),
          const UpgradeKoAlert(),
        ],
      ),
    );
  }
}

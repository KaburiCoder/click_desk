import 'package:click_desk/shared/constants/image_paths.dart';
import 'package:click_desk/widgets/upgrade_ko_alert/upgrade_ko_alert.dart';
import 'package:flutter/material.dart';

class InitViewPage extends StatelessWidget {
  const InitViewPage({super.key});

  @override
  Widget build(BuildContext context) {
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

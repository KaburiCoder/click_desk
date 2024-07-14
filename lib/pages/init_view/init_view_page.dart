import 'package:flutter/material.dart';

import 'package:click_desk/constants/image_paths.dart';

class InitViewPage extends StatelessWidget {
  const InitViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(ImagePaths.clickSoftLogo),
      ),
    );
  }
}

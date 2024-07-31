import 'dart:developer';

import 'package:app_version_update/app_version_update.dart';
import 'package:flutter/material.dart';

import 'package:click_desk/constants/image_paths.dart';

class InitViewPage extends StatefulWidget {
  const InitViewPage({super.key});

  @override
  State<InitViewPage> createState() => _InitViewPageState();
}

class _InitViewPageState extends State<InitViewPage> {
  @override
  void initState() {
    _verifyVersion().catchError((e){
      log(e);
    });
    super.initState();
  }

  Future<void> _verifyVersion() async {
    await AppVersionUpdate.checkForUpdates(
      // appleId: '1459706595',
      playStoreId: 'kr.click_soft.click_desk',
    ).then((result) async {
      if (result.canUpdate!) {
        await AppVersionUpdate.showAlertUpdate(
          appVersionResult: result,
          context: context,
          mandatory: true,
          backgroundColor: Colors.grey[200],
          title: '새로운 버전이 있어요!',
          titleTextStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24.0),
          content: '새로운 업데이트가 발견되었어요.\n앱 업데이트를 하시겠습니까?',
          contentTextStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
          updateButtonText: '업데이트',
          cancelButtonText: '나중에',
        );
      }
    });
  }

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

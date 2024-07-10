import 'package:click_desk/constants/font_family.dart';
import 'package:click_desk/widgets/click_count.dart';
import 'package:click_desk/providers/auth/auth_notifier_provider.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LeftWidget extends ConsumerWidget {
  const LeftWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClickCount(
          count: 5,
          onCalled: () {
            ref.read(authNotifierProvider.notifier).signout();
          },
          child: const BaseText("안녕하세요!",
              fontSize: 40, bold: true, fontFamily: FontFamily.kccHanbit),
        ),
        const BaseText("클릭소프트 의원입니다.",
            fontSize: 40,
            bold: true,
            color: Colors.blue,
            fontFamily: FontFamily.kccHanbit),
      ],
    );
  }
}

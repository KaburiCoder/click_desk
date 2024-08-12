import 'package:click_desk/shared/constants/font_family.dart';
import 'package:click_desk/shared/providers/auth/auth_provider.dart';
import 'package:click_desk/widgets/click_count.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LeftWidget extends ConsumerWidget {
  const LeftWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authProvider);
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClickCount(
          count: 5,
          onCalled: () {
            ref.read(authProvider.notifier).signout();
          },
          child: const BaseText("안녕하세요!",
              fontSize: 40, bold: true, fontFamily: FontFamily.kccHanbit),
        ),
         BaseText("${auth.value?.orgName}입니다.",
            fontSize: 40,
            bold: true,
            color: Colors.blue,
            fontFamily: FontFamily.kccHanbit),
      ],
    );
  }
}

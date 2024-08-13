import 'package:click_desk/features/regist/regist_carousel.dart';
import 'package:click_desk/shared/constants/font_family.dart';
import 'package:click_desk/shared/constants/lottie_paths.dart';
import 'package:click_desk/widgets/left_wrapper.dart';
import 'package:click_desk/widgets/lottie.dart';
import 'package:click_desk/widgets/right_container.dart';
import 'package:click_desk/widgets/tab_outside_to_close_keyboard.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegistPage extends ConsumerStatefulWidget {
  const RegistPage({super.key});

  @override
  ConsumerState<RegistPage> createState() => _RegistPageState();
}

class _RegistPageState extends ConsumerState<RegistPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TapOutsideToCloseKeyboard(
      child: Row(
        children: [
          // Left
          LeftWrapper(
            flex: 3,
            logoTextColor: Colors.indigo[600]!,
            backgroundColor: Colors.white,
            navButtonColor: Colors.blue[300],
            bodyWidget: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const HelloWidget(),
                  LottieAnimation(
                    LottiePaths.write,
                    duration: 3000,
                  )
                ],
              ),
            ),
          ),
          const Expanded(
            flex: 7,
            child: RightContainer(
              padding: EdgeInsets.all(8.0),
              height: 800,
              child: RegistCarousel(),
            ),
          )
        ],
      ),
    );
  }
}

class HelloWidget extends ConsumerWidget {
  const HelloWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BaseText("인적사항을",
            fontSize: 40, bold: true, fontFamily: FontFamily.kccHanbit),
        BaseText("입력해주세요.",
            fontSize: 40, bold: true, fontFamily: FontFamily.kccHanbit),
      ],
    );
  }
}

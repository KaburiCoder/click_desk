import 'package:click_desk/shared/constants/lottie_paths.dart';
import 'package:click_desk/routes/nav.dart';
import 'package:click_desk/shared/providers/desk_settings/desk_settings.dart';
import 'package:click_desk/widgets/lottie.dart';
import 'package:click_desk/widgets/right_container.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'choice_card.dart';

class ChoiceWidget extends ConsumerWidget {
  const ChoiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      flex: 4,
      child: RightContainer(
        child: Column(
          children: [
            Expanded(
              child: ChoiceCard(
                text1: "우리병원에",
                text2: "처음 방문",
                text3: "하셨나요?",
                lottie: LottieAnimation(
                  LottiePaths.firstVisit,
                  forward: true,
                  duration: 3000,
                ),
                onClick: () {
                  Nav.of(context).pushCertNew();
                },
              ),
            ),
            const HeightSpacer(20),
            Expanded(
              child: ChoiceCard(
                text1: "우리병원에",
                text2: "진료받은 적",
                text3: "있으신가요?",
                lottie: LottieAnimation(
                  LottiePaths.followUp,
                  forward: true,
                  duration: 3000,
                ),
                onClick: () {
                  Nav.of(context).pushCert();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

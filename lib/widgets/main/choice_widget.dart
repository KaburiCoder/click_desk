import 'package:click_recept/constants/lottie_paths.dart';
import 'package:click_recept/routes/nav.dart';
import 'package:click_recept/widgets/lottie.dart';
import 'package:click_recept/widgets/right_container.dart';
import 'package:click_recept/widgets/spacer.dart';
import 'package:flutter/material.dart';

import 'choice_card.dart';

class ChoiceWidget extends StatelessWidget {
  const ChoiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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

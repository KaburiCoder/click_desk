import 'package:click_desk/shared/constants/lottie_paths.dart';
import 'package:click_desk/routes/nav.dart';
import 'package:click_desk/widgets/card_x.dart';
import 'package:click_desk/widgets/lottie.dart';
import 'package:flutter/material.dart';

class NewVerificationSelections extends StatelessWidget {
  const NewVerificationSelections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 26.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: HeaderedContainer(
                title: "직접입력 하기",
                text: "직접입력",
                description: "인적사항을 직접 입력할게요",
                rightWidget: LottieAnimation(LottiePaths.write, duration: 5000),
                icon: Icons.lock,
                onClick: () => Nav.of(context).pushRegist(),
              ),
            ),
            Expanded(
              child: HeaderedContainer(
                title: "QR 바코드 접수",
                text: "모바일 건강보험증",
                description: "모바일 건강보험증 어플로 접수할게요",
                rightWidget: LottieAnimation(LottiePaths.qr, duration: 5000),
                icon: Icons.qr_code,
                onClick: () => Nav.of(context).pushQRScan(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:click_recept/constants/lottie_paths.dart';
import 'package:click_recept/routes/nav.dart';
import 'package:click_recept/widgets/card_x.dart';
import 'package:click_recept/widgets/lottie.dart';
import 'package:flutter/material.dart';

class VerificationSelections extends StatelessWidget {
  const VerificationSelections({
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
                title: "휴대폰 번호 접수",
                text: "휴대전화번호",
                description: "내원했을 당시 등록한 휴대전화번호를 접수할게요",
                rightWidget:
                    LottieAnimation(LottiePaths.phonNumber, duration: 5000),
                icon: Icons.phone_android,
                onClick: () => Nav.of(context).pushPhone(),
              ),
            ),
            Expanded(
              child: HeaderedContainer(
                title: "주민등록번호 접수",
                text: "주민등록번호",
                description: "내원했을 당시 등록한 주민등록번호를 접수할게요",
                rightWidget:
                    LottieAnimation(LottiePaths.security, duration: 5000),
                icon: Icons.lock,
                onClick: () => Nav.of(context).pushJumin(),
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

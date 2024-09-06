import 'package:click_desk/shared/constants/lottie_paths.dart';
import 'package:click_desk/routes/nav.dart';
import 'package:click_desk/shared/providers/desk_settings/desk_settings.dart';
import 'package:click_desk/widgets/card_x.dart';
import 'package:click_desk/widgets/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VerificationSelections extends ConsumerWidget {
  const VerificationSelections({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(deskSettingsProvider);

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
                rightWidget: LottieAnimation(
                    maxWidth: 150, LottiePaths.phonNumber, duration: 5000),
                icon: Icons.phone_android,
                onClick: () => Nav.of(context).pushPhone(),
              ),
            ),
            Expanded(
              child: HeaderedContainer(
                title: "주민등록번호 접수",
                text: "주민등록번호",
                description: "내원했을 당시 등록한 주민등록번호를 접수할게요",
                rightWidget: LottieAnimation(
                    maxWidth: 150, LottiePaths.security, duration: 5000),
                icon: Icons.lock,
                onClick: () => Nav.of(context).pushJumin(),
              ),
            ),
            if (!(settings.value?.unUseQR ?? false))
              Expanded(
                child: HeaderedContainer(
                  title: "QR 바코드 접수",
                  text: "모바일 건강보험증",
                  description: "모바일 건강보험증 어플로 접수할게요",
                  rightWidget: LottieAnimation(
                      maxWidth: 150, LottiePaths.qr, duration: 5000),
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

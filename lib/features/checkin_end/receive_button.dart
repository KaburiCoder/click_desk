import 'package:click_desk/features/checkin_end/listeners/consent_listener.dart';
import 'package:click_desk/features/checkin_end/listeners/receive_listener.dart';
import 'package:click_desk/features/checkin_end/providers/consent_provider.dart';
import 'package:click_desk/models/request_state/request_state.dart';
import 'package:click_desk/shared/services/socket_io/receive_provider.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExTest {
  final String exTest;

  ExTest({required this.exTest});
}

class Test extends ExTest {
  final String test;

  Test({required this.test}) : super(exTest: '');
}

class ReceiveButton extends ConsumerWidget {
  const ReceiveButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final receiveState = ref.watch(receiveProvider);
    final consentState = ref.watch(consentProvider);
    final isReceiveLoading = receiveState is RequestLoadingState;
    final isConsentLoading = consentState == const ConsentState.loading();

    final isLoading = isReceiveLoading || isConsentLoading;

    return Stack(
      children: [
        const ReceiveListener(),
        const ConsentListener(),
        SizedBox(
          width: 300,
          height: 70,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: isLoading
                ? null
                : ref.read(consentProvider.notifier).checkConsent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isLoading) ...[
                  const CircularProgressIndicator(),
                  const WidthSpacer()
                ],
                const BaseText("접수하기", color: Colors.white, fontSize: 28),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

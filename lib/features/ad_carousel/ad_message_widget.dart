import 'package:click_desk/features/ad_carousel/providers/ad_message.dart';
import 'package:click_desk/widgets/scrolling_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdMessageWidget extends ConsumerWidget {
  const AdMessageWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final adMessage = ref.watch(adMessageNotifierProvider);

    return Positioned(
      bottom: 0,
      left: 0,
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: ScrollingText(
            animationSec: adMessage.value?.animationSeconds ?? 10,
            fontSize: 80,
            height: 120,
            text: adMessage.value?.message ?? ""),
      ),
    );
  }
}

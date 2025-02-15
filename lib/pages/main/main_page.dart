import 'package:click_desk/features/main/choice_widget.dart';
import 'package:click_desk/features/main/left_widget.dart';
import 'package:click_desk/shared/providers/desk_settings/desk_settings.dart';
import 'package:click_desk/shared/providers/socket_io/socket_io_provider.dart';
import 'package:click_desk/features/ad_carousel/ad_carousel.dart';
import 'package:click_desk/widgets/left_wrapper.dart';
import 'package:click_desk/widgets/sized_scaffold.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(socketIOProvider);
    ref.watch(deskSettingsProvider);

    return PopScope(
      canPop: false,
      child: SizedScaffold(
        child: Stack(
          children: [
            Row(
              children: [
                // Left
                LeftWrapper(
                  flex: 4,
                  showNavButtons: false,
                  logoTextColor: Colors.indigo[600]!,
                  backgroundColor: Colors.white,
                  bodyWidget: const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        LeftWidget(),
                        BaseText("우측 버튼을 클릭해 접수해주세요.",
                            fontSize: 20, bold: true),
                      ],
                    ),
                  ),
                ),
                const ChoiceWidget(),
              ],
            ),
            const SizedBox(width: double.infinity, child: AdCarousel()),
          ],
        ),
      ),
    );
  }
}

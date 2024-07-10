import 'package:click_desk/routes/nav.dart';
import 'package:click_desk/widgets/round_icon_button.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:flutter/material.dart';

class RoundNavButtons extends StatelessWidget {
  const RoundNavButtons({
    super.key,
    required this.navButtonColor,
  });

  final Color? navButtonColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundIconButton(
          icon: Icons.arrow_back_ios_new_outlined,
          backButtonColor: navButtonColor,
          onPressed: () => Nav.of(context).pop(),
        ),
        const WidthSpacer(),
        RoundIconButton(
          icon: Icons.home,
          backButtonColor: navButtonColor,
          onPressed: () => Nav.of(context).goMain(),
        ),
      ],
    );
  }
}

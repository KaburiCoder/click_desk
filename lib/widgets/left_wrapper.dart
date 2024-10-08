import 'package:click_desk/widgets/head_mini_text.dart';
import 'package:click_desk/widgets/round_nav_buttons.dart';
import 'package:flutter/material.dart';

class LeftWrapper extends StatelessWidget {
  final int flex;
  final Color? backgroundColor;
  final Color? navButtonColor;
  final Color logoTextColor;
  final bool showNavButtons;
  final Widget bodyWidget;
  const LeftWrapper({
    super.key,
    this.flex = 1,
    this.backgroundColor,
    this.navButtonColor,
    required this.bodyWidget,
    this.showNavButtons = true,
    this.logoTextColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HeadMiniText(color: logoTextColor),
            bodyWidget,
            if (showNavButtons)
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RoundNavButtons(navButtonColor: navButtonColor),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

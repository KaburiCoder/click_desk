import 'package:click_recept/widgets/container_x.dart';
import 'package:click_recept/widgets/spacer.dart';
import 'package:click_recept/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

class HeaderedContainer extends StatelessWidget {
  final String title;
  final String text;
  final String description;
  final IconData? icon;
  final Widget rightWidget;
  final double? verticalMargin;
  final Function() onClick;
  const HeaderedContainer({
    super.key,
    required this.title,
    required this.text,
    required this.description,
    required this.rightWidget,
    required this.onClick,
    this.icon,
    this.verticalMargin = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: ContainerX(
        margin: EdgeInsets.symmetric(vertical: verticalMargin!),
        // color: Colors.blueAccent[50],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BaseText(title,
                      color: Colors.blueGrey[800], fontSize: 24, bold: true),
                  Icon(icon, color: Colors.blueGrey),
                ],
              ),
            ),
            Expanded(
              child: ContainerX(
                color: Colors.white,
                border: Border.all(color: Colors.lightBlueAccent),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BaseText(text, fontSize: 24, bold: true),
                          const HeightSpacer(),
                          BaseText(description,
                              fontSize: 16,
                              bold: true,
                              color: Colors.blueGrey),
                        ],
                      ),
                      rightWidget,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

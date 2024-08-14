import 'package:click_desk/widgets/spacer.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

class SettingRow extends StatelessWidget {
  final IconData iconData;
  final Color iconColor;
  final String title;
  final String description;
  final Widget? item;
  const SettingRow({
    super.key,
    required this.iconData,
    required this.title,
    required this.description,
    this.item,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData, size: 50, color: iconColor),
        const WidthSpacer(16),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BaseText(title, fontSize: 20, bold: true),
                    BaseText(description, color: Colors.grey),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: item ?? const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

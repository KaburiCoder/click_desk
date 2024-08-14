import 'package:click_desk/routes/nav.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

class SettingsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SettingsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[100],
      title: const BaseText("설정", fontSize: 20, bold: true),
      centerTitle: true,
      leading: IconButton(
        icon: const Row(
          children: [
            Icon(Icons.arrow_back_ios_new),
            WidthSpacer(),
            Text("뒤로가기"),
          ],
        ),
        onPressed: () {
          Nav.of(context).pop();
        },
      ),
      leadingWidth: 120,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

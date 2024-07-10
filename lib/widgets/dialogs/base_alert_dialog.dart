import 'package:click_recept/routes/nav.dart';
import 'package:click_recept/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

Future<dynamic> baseAlertDialog(BuildContext context, String message) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const BaseText("알림", fontSize: 28, bold: true),
        content: IntrinsicHeight(
          child: Container(
            constraints: const BoxConstraints(minHeight: 100, minWidth: 300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BaseText(message, fontSize: 24),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Nav.of(context).pop();
              },
              child: const BaseText(
                "확인",
                fontSize: 24,
              ))
        ],
      );
    },
  );
}

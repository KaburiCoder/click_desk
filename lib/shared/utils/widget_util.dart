import 'package:flutter/material.dart';

Size getWidgetSize(GlobalKey key) {
  if (key.currentContext == null) {
    return const Size(0, 0);
  }
  final RenderBox renderBox =
      key.currentContext!.findRenderObject() as RenderBox;
  return renderBox.size;
}

Size getScreenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

import 'package:click_recept/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

class CommonLeftBody extends StatelessWidget {
  const CommonLeftBody({
    super.key,
    required this.title1,
    required this.title2,
    required this.bodyWidget,
  });

  final String title1;
  final String title2;
  final Widget? bodyWidget;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BaseText(
                      title1,
                      fontSize: 50,
                      bold: true,
                      color: Colors.white,
                    ),
                    BaseText(
                      title2,
                      fontSize: 50,
                      bold: true,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(width: 30),
                Icon(Icons.arrow_right_alt_sharp,
                    size: 100, color: Colors.blue[100]),
              ],
            ),
            if (bodyWidget != null)
              Expanded(
                child: bodyWidget!,
              )
          ],
        ),
      ),
    );
  }
}

import 'package:click_recept/widgets/left_wrapper.dart';
import 'package:flutter/material.dart';

import 'confirm_left_body_widget.dart';

class CheckinEndLeftWidget extends StatelessWidget {
  const CheckinEndLeftWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LeftWrapper(
      flex: 4,
      logoTextColor: Colors.indigo[600]!,
      backgroundColor: Colors.white,
      navButtonColor: Colors.blue[300],
      bodyWidget: const Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ConfirmLeftBodyWidget(),
          ],
        ),
      ),
    );
  }
}

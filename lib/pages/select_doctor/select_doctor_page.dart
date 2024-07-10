import 'package:click_recept/widgets/right_container.dart';
import 'package:click_recept/widgets/select_doctor/doctors_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/select_doctor/doctor_left_widget.dart';

class SelectDoctorPage extends ConsumerWidget {
  const SelectDoctorPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Row(
      children: [
        Expanded(
          flex: 3,
          child: DoctorLeftWidget(),
        ),
        Expanded(
          flex: 9,
          child: RightContainer(
            child: Padding(
              padding: EdgeInsets.only(left: 30),
              child: DoctorsWidget(),
            ),
          ),
        ),
      ],
    );
  }
}

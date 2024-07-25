import 'package:click_desk/constants/font_family.dart';
import 'package:click_desk/services/doctor/get_doctors.dart';
import 'package:click_desk/widgets/select_doctor/doctor_card.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DoctorsWidget extends ConsumerWidget {
  const DoctorsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final doctorsAsyncValue = ref.watch(getDoctorsProvider);

    return doctorsAsyncValue.when(
      data: (doctors) {
        return RefreshIndicator(
          onRefresh: () async => ref.invalidate(getDoctorsProvider),
          child: Scrollbar(
            thumbVisibility: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 2.5,
                mainAxisSpacing: 4,
                crossAxisSpacing: 8,
                children: [
                  for (final doctor in doctors) DoctorCard(doctor: doctor)
                ],
              ),
            ),
          ),
        );
      },
      error: (error, stack) {
        return Center(child: BaseText(error.toString()));
      },
      loading: () => const Loading(),
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircularProgressIndicator(),
        WidthSpacer(30),
        BaseText("조회 중 입니다.", fontFamily: FontFamily.jalnan2, fontSize: 30),
      ],
    ));
  }
}

import 'package:click_desk/shared/constants/font_family.dart';
import 'package:click_desk/features/select_doctor/providers/get_doctors.dart';
import 'package:click_desk/features/select_doctor/doctor_card.dart';
import 'package:click_desk/features/select_doctor/lib/select_doctor_and_push.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DoctorsWidget extends ConsumerStatefulWidget {
  const DoctorsWidget({
    super.key,
  });

  @override
  ConsumerState<DoctorsWidget> createState() => _DoctorsWidgetState();
}

class _DoctorsWidgetState extends ConsumerState<DoctorsWidget> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final doctorsAsyncValue = ref.watch(getDoctorsProvider);

    return doctorsAsyncValue.when(
      data: (doctors) {
        if (doctors.length == 1) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            selectDoctorAndPush(context, ref, doctor: doctors[0]);
          });
        }
        return RefreshIndicator(
          onRefresh: () async => ref.invalidate(getDoctorsProvider),
          child: Scrollbar(
            controller: _scrollController,
            thumbVisibility: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.count(
                controller: _scrollController,
                crossAxisCount: 2,
                childAspectRatio: 2.5,
                mainAxisSpacing: 4,
                crossAxisSpacing: 8,
                physics: const AlwaysScrollableScrollPhysics(),
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

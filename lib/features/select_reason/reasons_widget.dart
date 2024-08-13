import 'package:click_desk/shared/constants/lottie_paths.dart';
import 'package:click_desk/models/reason_state/reason_state.dart';
import 'package:click_desk/models/request_state/request_state.dart';
import 'package:click_desk/shared/providers/checkin/checkin_provider.dart';
import 'package:click_desk/shared/services/doctor/get_reasons.dart';
import 'package:click_desk/shared/services/socket_io/fetch_health_check_up_list_provider.dart';
import 'package:click_desk/widgets/base_alert_dialog.dart';
import 'package:click_desk/features/dialogs/select_patient_dialog.dart';
import 'package:click_desk/widgets/lottie.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'reason_box.dart';

class ReasonsWidget extends ConsumerStatefulWidget {
  const ReasonsWidget({
    super.key,
  });

  @override
  ConsumerState<ReasonsWidget> createState() => _ReasonsWidgetState();
}

class _ReasonsWidgetState extends ConsumerState<ReasonsWidget> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final reasonsAsyncValue = ref.watch(getReasonsProvider);
    final checkin = ref.watch(checkinProvider);
    final healthCheckupState = ref.watch(fetchHealthCheckUpListProvider);
    ref.listen(
      fetchHealthCheckUpListProvider,
      (previous, next) {
        switch (next) {
          case RequestSuccessState<ReasonState>():
            showSelectReasonSubDialog(context, next.data);
          case RequestErrorState():
            baseAlertDialog(context, next.message);
        }
      },
    );

    return Container(
      child: reasonsAsyncValue.when(
          data: (data) {
            final newData = checkin.doctorState.gumjin ? data : data.where((d)=> !d.useNHISHealthCheckUp).toList();
            return RefreshIndicator(
              onRefresh: () async => ref.invalidate(getReasonsProvider),
              child: Scrollbar(
                controller: _scrollController,
                thumbVisibility: true,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GridView.builder(
                        controller: _scrollController,
                        physics: const AlwaysScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.7,
                        ),
                        itemCount: newData.length,
                        itemBuilder: (context, index) {
                          final reason = newData[index];
                          return ReasonBox(reason: reason);
                        },
                      ),
                    ),
                    if (healthCheckupState is RequestLoadingState)
                      SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: LottieAnimation(LottiePaths.loading,
                            duration: 3000),
                      )
                  ],
                ),
              ),
            );
          },
          error: (error, stackTrace) {
            return ErrorWidget(error);
          },
          loading: () => const LoadingWidget()),
    );
  }
}

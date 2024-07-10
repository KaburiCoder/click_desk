import 'package:click_desk/services/doctor/get_reasons.dart';
import 'package:click_desk/widgets/dialogs/select_patient_dialog.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'reason_box.dart';

class ReasonsWidget extends ConsumerWidget {
  const ReasonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reasonsAsyncValue = ref.watch(getReasonsProvider);
    return Container(
      child: reasonsAsyncValue.when(
          data: (data) {
            return RefreshIndicator(
              onRefresh: () async => ref.invalidate(getReasonsProvider),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.6,
                ),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final reason = data[index];
                  return ReasonBox(reason: reason);
                },
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

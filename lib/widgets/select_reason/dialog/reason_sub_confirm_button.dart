import 'package:click_recept/providers/checkin/checkin_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ReasonSubConfirmButton extends ConsumerWidget {
  final Function() onConfirm;
  const ReasonSubConfirmButton({
    super.key,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkinState = ref.watch(checkinProvider);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        minimumSize: const Size(double.infinity, 80),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // 직각 모서리 설정
        ),
      ),
      onPressed: checkinState.reasonState.isSubsExists ? onConfirm : null,
      child: const Text("확인"),
    );
  }
}

import 'package:click_desk/providers/checkin/checkin_provider.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
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
    final checked = checkinState.reasonState.isSubsExists;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        minimumSize: const Size(double.infinity, 80),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // 직각 모서리 설정
        ),
      ),
      onPressed: checked ? onConfirm : null,
      child: BaseText("확인",
          fontSize: 24, color: checked ? Colors.white : Colors.black),
    );
  }
}

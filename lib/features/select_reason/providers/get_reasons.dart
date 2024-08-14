import 'package:click_desk/models/reason_state/reason_state.dart';
import 'package:click_desk/shared/providers/checkin/checkin_provider.dart';
import 'package:click_desk/shared/services/reason/reason_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_reasons.g.dart';

@riverpod
FutureOr<List<ReasonState>> getReasons(GetReasonsRef ref) async {
  final checkin = ref.read(checkinProvider);
  final reasonService = ref.read(reasonServiceProvider);
  var reasons = await reasonService.getByDoctorId(checkin.doctorState.id);
  if (reasons.isEmpty) {
    reasons = await reasonService.getAll();
  }
  return reasons;
}

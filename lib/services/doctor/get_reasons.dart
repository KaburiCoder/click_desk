import 'package:click_recept/models/reason_state/reason_state.dart';
import 'package:click_recept/services/doctor/reason_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_reasons.g.dart';

@riverpod
FutureOr<List<ReasonState>> getReasons(GetReasonsRef ref) {
  final reasonService = ref.read(reasonServiceProvider);
  return reasonService.getAll();
}

import 'package:click_desk/models/reason_state/reason_state.dart';
import 'package:click_desk/providers/dio/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'reason_service.g.dart';

class ReasonService {
  final ReasonServiceRef ref;

  ReasonService(this.ref);

  List<ReasonState> _toList<T>(T data) {
    final reasons = (data as List).map((d) {
      return ReasonState.fromJson(d);
    }).toList();

    return reasons;
  }

  Future<List<ReasonState>> getAll() async {
    final dio = ref.read(dioProvider);
    final response = await dio.get("/clickdesk/reason");

    return _toList(response.data);
  }

  Future<List<ReasonState>> getByDoctorId(String doctorId) async {
    final dio = ref.read(dioProvider);
    final response = await dio.get("/clickdesk/reason/$doctorId");

    return _toList(response.data);
  }
}

@riverpod
ReasonService reasonService(ReasonServiceRef ref) {
  return ReasonService(ref);
}

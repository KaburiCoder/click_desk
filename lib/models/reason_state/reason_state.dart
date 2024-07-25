import 'package:freezed_annotation/freezed_annotation.dart';

part 'reason_state.g.dart';
part 'reason_state.freezed.dart';

@freezed
class ReasonState with _$ReasonState {
  const ReasonState._();

  const factory ReasonState({
    @Default("") String id,
    @Default("") String userId,
    @Default(false) bool useNHISHealthCheckUp,
    @Default(0) int seq,
    @Default("") String text,
    @Default([]) List<ReasonSub> subs,
  }) = _ReasonState;

  get isSubsExists {
    return subs.isNotEmpty;
  }

  String toSayuString() {
    if (subs.isEmpty) return text;
    final subTexts = subs.map((sub) => sub.text).join(", ");

    return "$text($subTexts)";
  }

  factory ReasonState.fromJson(Map<String, dynamic> json) =>
      _$ReasonStateFromJson(json);
}

@freezed
class ReasonSub with _$ReasonSub {
  const factory ReasonSub({
    @Default(0) int seq,
    @Default("") String text,
    @Default([]) List<ReasonSub> subs,
    String? code, // 코드(DB상엔 존재하지 않음)
  }) = _ReasonSub;

  factory ReasonSub.fromJson(Map<String, dynamic> json) =>
      _$ReasonSubFromJson(json);
}

extension ReasonStateExtension on ReasonState {
  ReasonState deepCopyWithoutSubs() {
    return ReasonState(
      id: id,
      userId: userId,
      seq: seq,
      text: text,
      useNHISHealthCheckUp: useNHISHealthCheckUp,
      // subs 필드는 기본값인 빈 리스트를 사용하거나 명시적으로 설정하지 않습니다.
    );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'gumjin_state.freezed.dart';
part 'gumjin_state.g.dart';

@freezed
class GumjinState with _$GumjinState {
  const factory GumjinState({
    @Default("") String code,
    @Default("") String name,
  }) = _GumjinState;

  factory GumjinState.fromJson(Map<String, dynamic> json) => _$GumjinStateFromJson(json);
}

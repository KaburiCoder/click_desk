import 'package:freezed_annotation/freezed_annotation.dart';

part 'desk_settings_state.freezed.dart';
part 'desk_settings_state.g.dart';

@freezed
class DeskSettingsState with _$DeskSettingsState {
  const factory DeskSettingsState({
    @Default(false) bool unUseQR,
  }) = _DeskSettingsState;

  factory DeskSettingsState.fromJson(Map<String, dynamic> json) =>
      _$DeskSettingsStateFromJson(json);
}

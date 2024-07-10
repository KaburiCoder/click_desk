import 'package:freezed_annotation/freezed_annotation.dart';

part 'keypad_state.freezed.dart';

@freezed
class KeypadState with _$KeypadState {
  const factory KeypadState({
    @Default("") String number,
    @Default(false) bool goNext,
    @Default(true) bool isDiabled,
  }) = _KeypadState;
}

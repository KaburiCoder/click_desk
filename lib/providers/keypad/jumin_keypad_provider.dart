import 'package:click_desk/models/keypad_state/keypad_state.dart';
import 'package:click_desk/providers/interfaces/ikeypad.dart';
import 'package:click_desk/widgets/custom_keypad.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'jumin_keypad_provider.g.dart';

@riverpod
class JuminKeypad extends _$JuminKeypad implements IKeypad {
  @override
  KeypadState build() {
    return const KeypadState(number: "");
  }

  @override
  handleChange({required InputStyle inputStyle, required String value}) {
    switch (inputStyle) {
      case InputStyle.clear:
        state = const KeypadState();
        break;
      case InputStyle.delete:
        if (state.number.isNotEmpty) {
          state = KeypadState(
              number: state.number.substring(0, state.number.length - 1));
        }
        break;
      case InputStyle.next:
        state = state.copyWith(goNext: true);
        break;
      default:
        final combinedNumber = state.number + value;

        if (combinedNumber.length == 14) return;

        state = KeypadState(
            number: combinedNumber, isDiabled: combinedNumber.length != 13);
        break;
    }
  }
}

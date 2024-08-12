import 'package:click_desk/models/keypad_state/keypad_state.dart';
import 'package:click_desk/shared/providers/interfaces/ikeypad.dart';
import 'package:click_desk/widgets/custom_keypad.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'phone_keypad_provider.g.dart';

@riverpod
class PhoneKeypad extends _$PhoneKeypad implements IKeypad {
  KeypadState _inititalState() {
    return const KeypadState(number: "010");
  }

  @override
  KeypadState build() {
    return _inititalState();
  }

  setNumber(String number) {
    state = KeypadState(number: number, isDiabled: number.length < 10);
  }

  @override
  handleChange({required InputStyle inputStyle, required String value}) {
    switch (inputStyle) {
      case InputStyle.clear:
        state = _inititalState();
        break;
      case InputStyle.delete:
        if (state.number.isNotEmpty) {
          setNumber(state.number.substring(0, state.number.length - 1));
        }
        break;
      case InputStyle.next:
        state = state.copyWith(goNext: true);
        break;
      default:
        // if (state.number.isEmpty) {
        //   if (value != "0") {
        //     setNumber("010$value");
        //     return;
        //   }
        // }

        final combinedNumber = state.number + value;

        if (combinedNumber.length == 12) return;

        setNumber(combinedNumber);

        break;
    }
  }
}

import 'package:click_desk/models/keypad_state/keypad_state.dart';
import 'package:click_desk/providers/interfaces/ikeypad.dart';
import 'package:click_desk/providers/interfaces/iprovder_manager_base.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class KeypadManager implements IProviderManagerBase<KeypadState, IKeypad> {
  @override
  final WidgetRef ref;
  final AutoDisposeNotifierProvider<dynamic, KeypadState> keypadProvider;
  const KeypadManager(this.ref, this.keypadProvider);

  @override
  IKeypad read() {
    return ref.watch(keypadProvider.notifier) as IKeypad;
  }

  @override
  KeypadState watch() {
    return ref.watch(keypadProvider);
  }
}

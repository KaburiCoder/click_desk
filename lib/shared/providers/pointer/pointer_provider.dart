import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pointer_provider.g.dart';

@riverpod
class Pointer extends _$Pointer {
  @override
  bool build() {
    return false;
  }

  void toggle() {
    state = !state;
  }
}

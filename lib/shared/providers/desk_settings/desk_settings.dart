import 'package:click_desk/models/desk_settings_state/desk_settings_state.dart';
import 'package:click_desk/shared/providers/auth/auth_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:click_desk/shared/providers/desk_settings/api/fetch_desk_settings.dart'
    as api;

part 'desk_settings.g.dart';

@riverpod
class DeskSettings extends _$DeskSettings {
  @override
  FutureOr<DeskSettingsState> build() async {
    final settings = await _fetchDeskSettings();
    return settings;
  }

  Future<DeskSettingsState> _fetchDeskSettings() async {
    state = const AsyncValue.loading();
    final auth = ref.read(authProvider);
    if (auth.value != null) {
      state = await AsyncValue.guard(() => api.fetchDeskSettings(ref));
    }

    return state.value ?? const DeskSettingsState();
  }
}

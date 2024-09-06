import 'package:click_desk/models/desk_settings_state/desk_settings_state.dart';
import 'package:click_desk/shared/constants/paths/api_paths.dart';
import 'package:click_desk/shared/providers/dio/dio_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<DeskSettingsState> fetchDeskSettings(Ref ref) async {
  final dio = ref.read(dioProvider);
  final response = await dio.get(ApiPath.settings);
  final data = response.data;

  return response.statusCode == 200 ? DeskSettingsState.fromJson(data) : const DeskSettingsState();
}

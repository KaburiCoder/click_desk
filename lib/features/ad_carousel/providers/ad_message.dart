import 'package:click_desk/features/ad_carousel/api/get_ad_message.dart';
import 'package:click_desk/models/ad_message/ad_message.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ad_message.g.dart';

@riverpod
class AdMessageNotifier extends _$AdMessageNotifier {
  @override
  FutureOr<AdMessage> build() {
    return getAdMessage();
  }

  Future<AdMessage> getAdMessage() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      return fetchAdMessage(ref);
    });

    return state.valueOrNull ?? const AdMessage();
  }
}

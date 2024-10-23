import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:upgrader/upgrader.dart' as ug;
import 'package:upgrader/upgrader.dart';
part 'upgrader_provider.g.dart';

@riverpod
class Upgrader extends _$Upgrader {
  @override
  FutureOr<ug.Upgrader> build() async {
    return await buildUpgrader();
  }

  Future<ug.Upgrader> buildUpgrader() async {
    final upgrader = ug.Upgrader(
      debugLogging: true,
      languageCode: "ko",
      countryCode: "KR",
      minAppVersion: "0.0.0",
      messages: MyKoreanMessages(),
    );

    await upgrader.initialize();

    return upgrader;
  }
}

class MyKoreanMessages extends UpgraderMessages {
  /// Override the message function to provide custom language localization.
  @override
  String? message(UpgraderMessage messageKey) {
    if (languageCode == 'ko') {
      switch (messageKey) {
        case UpgraderMessage.body:
          return '새 버전이 있습니다!\n기존: {{currentInstalledVersion}}\n최신: {{currentAppStoreVersion}}';
        case UpgraderMessage.buttonTitleIgnore:
          return '무시';
        case UpgraderMessage.buttonTitleLater:
          return '나중에';
        case UpgraderMessage.buttonTitleUpdate:
          return '업데이트';
        case UpgraderMessage.prompt:
          return '업데이트 후 dClick을 실행해주세요.';
        case UpgraderMessage.releaseNotes:
          return '출시 노트';
        case UpgraderMessage.title:
          return '업데이트';
      }
    }
    // Messages that are not provided above can still use the default values.
    return super.message(messageKey);
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_message.freezed.dart';
part 'ad_message.g.dart';

@freezed
class AdMessage with _$AdMessage {
  const factory AdMessage({
    @Default("") String message,
    @Default(20) int animationSeconds,
  }) = _AdMessage;

  factory AdMessage.fromJson(Map<String, dynamic> json) =>
      _$AdMessageFromJson(json);
}

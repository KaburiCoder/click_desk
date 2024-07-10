import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_search_params.freezed.dart';
part 'user_search_params.g.dart';

@freezed
class UserSearchParams with _$UserSearchParams {
  const UserSearchParams._();

  const factory UserSearchParams({
    String? qrCode,
    String? phoneNumber,
    String? jumin,
    String? suname,
  }) = _UserSearchParams;

  factory UserSearchParams.fromJson(Map<String, dynamic> json) =>
      _$UserSearchParamsFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_response.freezed.dart';
part 'socket_response.g.dart';

@Freezed(genericArgumentFactories: true)
class SocketResponse<T> with _$SocketResponse<T> {
  const factory SocketResponse({
    @Default(ResponseStatus.none) ResponseStatus status,
    T? data,
    String? message,
    Map<String, String>? error,
    String? errorCode,
  }) = _SocketResponse<T>;

  factory SocketResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$SocketResponseFromJson(json, fromJsonT);
}

enum ResponseStatus { success, error, none }

extension ResponseStatusExtension on ResponseStatus {
  static ResponseStatus fromString(String status) {
    switch (status) {
      case 'success':
        return ResponseStatus.success;
      case 'error':
        return ResponseStatus.error;
      case 'none':
      default:
        return ResponseStatus.none;
    }
  }

  String toShortString() {
    return toString().split('.').last;
  }
}

// [JsonConverter(typeof(LowercaseJsonStringEnumConverter<ResponseStatus>))]
// [JsonPropertyName("status")]
// public ResponseStatus Status { get; set; }
// [JsonPropertyName("data")]
// public T Data { get; set; }
// [JsonPropertyName("error")]
// public Dictionary<string, string> Error { get; set; }


// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdMessage _$AdMessageFromJson(Map<String, dynamic> json) {
  return _AdMessage.fromJson(json);
}

/// @nodoc
mixin _$AdMessage {
  String get message => throw _privateConstructorUsedError;
  int get animationSeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdMessageCopyWith<AdMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdMessageCopyWith<$Res> {
  factory $AdMessageCopyWith(AdMessage value, $Res Function(AdMessage) then) =
      _$AdMessageCopyWithImpl<$Res, AdMessage>;
  @useResult
  $Res call({String message, int animationSeconds});
}

/// @nodoc
class _$AdMessageCopyWithImpl<$Res, $Val extends AdMessage>
    implements $AdMessageCopyWith<$Res> {
  _$AdMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? animationSeconds = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      animationSeconds: null == animationSeconds
          ? _value.animationSeconds
          : animationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdMessageImplCopyWith<$Res>
    implements $AdMessageCopyWith<$Res> {
  factory _$$AdMessageImplCopyWith(
          _$AdMessageImpl value, $Res Function(_$AdMessageImpl) then) =
      __$$AdMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int animationSeconds});
}

/// @nodoc
class __$$AdMessageImplCopyWithImpl<$Res>
    extends _$AdMessageCopyWithImpl<$Res, _$AdMessageImpl>
    implements _$$AdMessageImplCopyWith<$Res> {
  __$$AdMessageImplCopyWithImpl(
      _$AdMessageImpl _value, $Res Function(_$AdMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? animationSeconds = null,
  }) {
    return _then(_$AdMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      animationSeconds: null == animationSeconds
          ? _value.animationSeconds
          : animationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdMessageImpl implements _AdMessage {
  const _$AdMessageImpl({this.message = "", this.animationSeconds = 20});

  factory _$AdMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdMessageImplFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final int animationSeconds;

  @override
  String toString() {
    return 'AdMessage(message: $message, animationSeconds: $animationSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdMessageImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.animationSeconds, animationSeconds) ||
                other.animationSeconds == animationSeconds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, animationSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdMessageImplCopyWith<_$AdMessageImpl> get copyWith =>
      __$$AdMessageImplCopyWithImpl<_$AdMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdMessageImplToJson(
      this,
    );
  }
}

abstract class _AdMessage implements AdMessage {
  const factory _AdMessage({final String message, final int animationSeconds}) =
      _$AdMessageImpl;

  factory _AdMessage.fromJson(Map<String, dynamic> json) =
      _$AdMessageImpl.fromJson;

  @override
  String get message;
  @override
  int get animationSeconds;
  @override
  @JsonKey(ignore: true)
  _$$AdMessageImplCopyWith<_$AdMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

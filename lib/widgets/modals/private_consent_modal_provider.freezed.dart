// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_consent_modal_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PrivateConsentModalState {
  bool get allChecked => throw _privateConstructorUsedError;
  bool get privateChecked => throw _privateConstructorUsedError;
  bool get marketingChecked => throw _privateConstructorUsedError;
  Uint8List? get signImageBuffer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrivateConsentModalStateCopyWith<PrivateConsentModalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivateConsentModalStateCopyWith<$Res> {
  factory $PrivateConsentModalStateCopyWith(PrivateConsentModalState value,
          $Res Function(PrivateConsentModalState) then) =
      _$PrivateConsentModalStateCopyWithImpl<$Res, PrivateConsentModalState>;
  @useResult
  $Res call(
      {bool allChecked,
      bool privateChecked,
      bool marketingChecked,
      Uint8List? signImageBuffer});
}

/// @nodoc
class _$PrivateConsentModalStateCopyWithImpl<$Res,
        $Val extends PrivateConsentModalState>
    implements $PrivateConsentModalStateCopyWith<$Res> {
  _$PrivateConsentModalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allChecked = null,
    Object? privateChecked = null,
    Object? marketingChecked = null,
    Object? signImageBuffer = freezed,
  }) {
    return _then(_value.copyWith(
      allChecked: null == allChecked
          ? _value.allChecked
          : allChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      privateChecked: null == privateChecked
          ? _value.privateChecked
          : privateChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      marketingChecked: null == marketingChecked
          ? _value.marketingChecked
          : marketingChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      signImageBuffer: freezed == signImageBuffer
          ? _value.signImageBuffer
          : signImageBuffer // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivateConsentModalStateImplCopyWith<$Res>
    implements $PrivateConsentModalStateCopyWith<$Res> {
  factory _$$PrivateConsentModalStateImplCopyWith(
          _$PrivateConsentModalStateImpl value,
          $Res Function(_$PrivateConsentModalStateImpl) then) =
      __$$PrivateConsentModalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool allChecked,
      bool privateChecked,
      bool marketingChecked,
      Uint8List? signImageBuffer});
}

/// @nodoc
class __$$PrivateConsentModalStateImplCopyWithImpl<$Res>
    extends _$PrivateConsentModalStateCopyWithImpl<$Res,
        _$PrivateConsentModalStateImpl>
    implements _$$PrivateConsentModalStateImplCopyWith<$Res> {
  __$$PrivateConsentModalStateImplCopyWithImpl(
      _$PrivateConsentModalStateImpl _value,
      $Res Function(_$PrivateConsentModalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allChecked = null,
    Object? privateChecked = null,
    Object? marketingChecked = null,
    Object? signImageBuffer = freezed,
  }) {
    return _then(_$PrivateConsentModalStateImpl(
      allChecked: null == allChecked
          ? _value.allChecked
          : allChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      privateChecked: null == privateChecked
          ? _value.privateChecked
          : privateChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      marketingChecked: null == marketingChecked
          ? _value.marketingChecked
          : marketingChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      signImageBuffer: freezed == signImageBuffer
          ? _value.signImageBuffer
          : signImageBuffer // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$PrivateConsentModalStateImpl implements _PrivateConsentModalState {
  const _$PrivateConsentModalStateImpl(
      {this.allChecked = false,
      this.privateChecked = false,
      this.marketingChecked = false,
      this.signImageBuffer});

  @override
  @JsonKey()
  final bool allChecked;
  @override
  @JsonKey()
  final bool privateChecked;
  @override
  @JsonKey()
  final bool marketingChecked;
  @override
  final Uint8List? signImageBuffer;

  @override
  String toString() {
    return 'PrivateConsentModalState(allChecked: $allChecked, privateChecked: $privateChecked, marketingChecked: $marketingChecked, signImageBuffer: $signImageBuffer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivateConsentModalStateImpl &&
            (identical(other.allChecked, allChecked) ||
                other.allChecked == allChecked) &&
            (identical(other.privateChecked, privateChecked) ||
                other.privateChecked == privateChecked) &&
            (identical(other.marketingChecked, marketingChecked) ||
                other.marketingChecked == marketingChecked) &&
            const DeepCollectionEquality()
                .equals(other.signImageBuffer, signImageBuffer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, allChecked, privateChecked,
      marketingChecked, const DeepCollectionEquality().hash(signImageBuffer));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivateConsentModalStateImplCopyWith<_$PrivateConsentModalStateImpl>
      get copyWith => __$$PrivateConsentModalStateImplCopyWithImpl<
          _$PrivateConsentModalStateImpl>(this, _$identity);
}

abstract class _PrivateConsentModalState implements PrivateConsentModalState {
  const factory _PrivateConsentModalState(
      {final bool allChecked,
      final bool privateChecked,
      final bool marketingChecked,
      final Uint8List? signImageBuffer}) = _$PrivateConsentModalStateImpl;

  @override
  bool get allChecked;
  @override
  bool get privateChecked;
  @override
  bool get marketingChecked;
  @override
  Uint8List? get signImageBuffer;
  @override
  @JsonKey(ignore: true)
  _$$PrivateConsentModalStateImplCopyWith<_$PrivateConsentModalStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

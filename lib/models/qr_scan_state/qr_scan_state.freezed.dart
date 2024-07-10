// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_scan_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QrScanState {
  bool get isLoading => throw _privateConstructorUsedError;
  Barcode? get scanData => throw _privateConstructorUsedError;
  QRViewController? get controller => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QrScanStateCopyWith<QrScanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrScanStateCopyWith<$Res> {
  factory $QrScanStateCopyWith(
          QrScanState value, $Res Function(QrScanState) then) =
      _$QrScanStateCopyWithImpl<$Res, QrScanState>;
  @useResult
  $Res call({bool isLoading, Barcode? scanData, QRViewController? controller});
}

/// @nodoc
class _$QrScanStateCopyWithImpl<$Res, $Val extends QrScanState>
    implements $QrScanStateCopyWith<$Res> {
  _$QrScanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? scanData = freezed,
    Object? controller = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      scanData: freezed == scanData
          ? _value.scanData
          : scanData // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as QRViewController?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QrScanStateImplCopyWith<$Res>
    implements $QrScanStateCopyWith<$Res> {
  factory _$$QrScanStateImplCopyWith(
          _$QrScanStateImpl value, $Res Function(_$QrScanStateImpl) then) =
      __$$QrScanStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Barcode? scanData, QRViewController? controller});
}

/// @nodoc
class __$$QrScanStateImplCopyWithImpl<$Res>
    extends _$QrScanStateCopyWithImpl<$Res, _$QrScanStateImpl>
    implements _$$QrScanStateImplCopyWith<$Res> {
  __$$QrScanStateImplCopyWithImpl(
      _$QrScanStateImpl _value, $Res Function(_$QrScanStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? scanData = freezed,
    Object? controller = freezed,
  }) {
    return _then(_$QrScanStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      scanData: freezed == scanData
          ? _value.scanData
          : scanData // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as QRViewController?,
    ));
  }
}

/// @nodoc

class _$QrScanStateImpl implements _QrScanState {
  const _$QrScanStateImpl(
      {this.isLoading = false, this.scanData, this.controller});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Barcode? scanData;
  @override
  final QRViewController? controller;

  @override
  String toString() {
    return 'QrScanState(isLoading: $isLoading, scanData: $scanData, controller: $controller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrScanStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.scanData, scanData) ||
                other.scanData == scanData) &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, scanData, controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QrScanStateImplCopyWith<_$QrScanStateImpl> get copyWith =>
      __$$QrScanStateImplCopyWithImpl<_$QrScanStateImpl>(this, _$identity);
}

abstract class _QrScanState implements QrScanState {
  const factory _QrScanState(
      {final bool isLoading,
      final Barcode? scanData,
      final QRViewController? controller}) = _$QrScanStateImpl;

  @override
  bool get isLoading;
  @override
  Barcode? get scanData;
  @override
  QRViewController? get controller;
  @override
  @JsonKey(ignore: true)
  _$$QrScanStateImplCopyWith<_$QrScanStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

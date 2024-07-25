// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_args.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocketArgs _$SocketArgsFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'checkConsent':
      return SocketCheckConsentArgs.fromJson(json);
    case 'saveConsent':
      return SocketSaveConsentArgs.fromJson(json);
    case 'fetchHealthCheckUpList':
      return SocketFetchHealthCheckUpListArgs.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SocketArgs',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SocketArgs {
  String get jumin => throw _privateConstructorUsedError;
  String get doctorCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String jumin, String doctorCode) checkConsent,
    required TResult Function(bool private, bool marketing, String jumin,
            String doctorCode, String suname, List<int> signImageBuffer)
        saveConsent,
    required TResult Function(String doctorCode, String jumin, String suname)
        fetchHealthCheckUpList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String jumin, String doctorCode)? checkConsent,
    TResult? Function(bool private, bool marketing, String jumin,
            String doctorCode, String suname, List<int> signImageBuffer)?
        saveConsent,
    TResult? Function(String doctorCode, String jumin, String suname)?
        fetchHealthCheckUpList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String jumin, String doctorCode)? checkConsent,
    TResult Function(bool private, bool marketing, String jumin,
            String doctorCode, String suname, List<int> signImageBuffer)?
        saveConsent,
    TResult Function(String doctorCode, String jumin, String suname)?
        fetchHealthCheckUpList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocketCheckConsentArgs value) checkConsent,
    required TResult Function(SocketSaveConsentArgs value) saveConsent,
    required TResult Function(SocketFetchHealthCheckUpListArgs value)
        fetchHealthCheckUpList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketCheckConsentArgs value)? checkConsent,
    TResult? Function(SocketSaveConsentArgs value)? saveConsent,
    TResult? Function(SocketFetchHealthCheckUpListArgs value)?
        fetchHealthCheckUpList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketCheckConsentArgs value)? checkConsent,
    TResult Function(SocketSaveConsentArgs value)? saveConsent,
    TResult Function(SocketFetchHealthCheckUpListArgs value)?
        fetchHealthCheckUpList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocketArgsCopyWith<SocketArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketArgsCopyWith<$Res> {
  factory $SocketArgsCopyWith(
          SocketArgs value, $Res Function(SocketArgs) then) =
      _$SocketArgsCopyWithImpl<$Res, SocketArgs>;
  @useResult
  $Res call({String jumin, String doctorCode});
}

/// @nodoc
class _$SocketArgsCopyWithImpl<$Res, $Val extends SocketArgs>
    implements $SocketArgsCopyWith<$Res> {
  _$SocketArgsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jumin = null,
    Object? doctorCode = null,
  }) {
    return _then(_value.copyWith(
      jumin: null == jumin
          ? _value.jumin
          : jumin // ignore: cast_nullable_to_non_nullable
              as String,
      doctorCode: null == doctorCode
          ? _value.doctorCode
          : doctorCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocketCheckConsentArgsImplCopyWith<$Res>
    implements $SocketArgsCopyWith<$Res> {
  factory _$$SocketCheckConsentArgsImplCopyWith(
          _$SocketCheckConsentArgsImpl value,
          $Res Function(_$SocketCheckConsentArgsImpl) then) =
      __$$SocketCheckConsentArgsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jumin, String doctorCode});
}

/// @nodoc
class __$$SocketCheckConsentArgsImplCopyWithImpl<$Res>
    extends _$SocketArgsCopyWithImpl<$Res, _$SocketCheckConsentArgsImpl>
    implements _$$SocketCheckConsentArgsImplCopyWith<$Res> {
  __$$SocketCheckConsentArgsImplCopyWithImpl(
      _$SocketCheckConsentArgsImpl _value,
      $Res Function(_$SocketCheckConsentArgsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jumin = null,
    Object? doctorCode = null,
  }) {
    return _then(_$SocketCheckConsentArgsImpl(
      jumin: null == jumin
          ? _value.jumin
          : jumin // ignore: cast_nullable_to_non_nullable
              as String,
      doctorCode: null == doctorCode
          ? _value.doctorCode
          : doctorCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketCheckConsentArgsImpl implements SocketCheckConsentArgs {
  const _$SocketCheckConsentArgsImpl(
      {required this.jumin, required this.doctorCode, final String? $type})
      : $type = $type ?? 'checkConsent';

  factory _$SocketCheckConsentArgsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketCheckConsentArgsImplFromJson(json);

  @override
  final String jumin;
  @override
  final String doctorCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SocketArgs.checkConsent(jumin: $jumin, doctorCode: $doctorCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketCheckConsentArgsImpl &&
            (identical(other.jumin, jumin) || other.jumin == jumin) &&
            (identical(other.doctorCode, doctorCode) ||
                other.doctorCode == doctorCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jumin, doctorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketCheckConsentArgsImplCopyWith<_$SocketCheckConsentArgsImpl>
      get copyWith => __$$SocketCheckConsentArgsImplCopyWithImpl<
          _$SocketCheckConsentArgsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String jumin, String doctorCode) checkConsent,
    required TResult Function(bool private, bool marketing, String jumin,
            String doctorCode, String suname, List<int> signImageBuffer)
        saveConsent,
    required TResult Function(String doctorCode, String jumin, String suname)
        fetchHealthCheckUpList,
  }) {
    return checkConsent(jumin, doctorCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String jumin, String doctorCode)? checkConsent,
    TResult? Function(bool private, bool marketing, String jumin,
            String doctorCode, String suname, List<int> signImageBuffer)?
        saveConsent,
    TResult? Function(String doctorCode, String jumin, String suname)?
        fetchHealthCheckUpList,
  }) {
    return checkConsent?.call(jumin, doctorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String jumin, String doctorCode)? checkConsent,
    TResult Function(bool private, bool marketing, String jumin,
            String doctorCode, String suname, List<int> signImageBuffer)?
        saveConsent,
    TResult Function(String doctorCode, String jumin, String suname)?
        fetchHealthCheckUpList,
    required TResult orElse(),
  }) {
    if (checkConsent != null) {
      return checkConsent(jumin, doctorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocketCheckConsentArgs value) checkConsent,
    required TResult Function(SocketSaveConsentArgs value) saveConsent,
    required TResult Function(SocketFetchHealthCheckUpListArgs value)
        fetchHealthCheckUpList,
  }) {
    return checkConsent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketCheckConsentArgs value)? checkConsent,
    TResult? Function(SocketSaveConsentArgs value)? saveConsent,
    TResult? Function(SocketFetchHealthCheckUpListArgs value)?
        fetchHealthCheckUpList,
  }) {
    return checkConsent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketCheckConsentArgs value)? checkConsent,
    TResult Function(SocketSaveConsentArgs value)? saveConsent,
    TResult Function(SocketFetchHealthCheckUpListArgs value)?
        fetchHealthCheckUpList,
    required TResult orElse(),
  }) {
    if (checkConsent != null) {
      return checkConsent(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketCheckConsentArgsImplToJson(
      this,
    );
  }
}

abstract class SocketCheckConsentArgs implements SocketArgs {
  const factory SocketCheckConsentArgs(
      {required final String jumin,
      required final String doctorCode}) = _$SocketCheckConsentArgsImpl;

  factory SocketCheckConsentArgs.fromJson(Map<String, dynamic> json) =
      _$SocketCheckConsentArgsImpl.fromJson;

  @override
  String get jumin;
  @override
  String get doctorCode;
  @override
  @JsonKey(ignore: true)
  _$$SocketCheckConsentArgsImplCopyWith<_$SocketCheckConsentArgsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketSaveConsentArgsImplCopyWith<$Res>
    implements $SocketArgsCopyWith<$Res> {
  factory _$$SocketSaveConsentArgsImplCopyWith(
          _$SocketSaveConsentArgsImpl value,
          $Res Function(_$SocketSaveConsentArgsImpl) then) =
      __$$SocketSaveConsentArgsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool private,
      bool marketing,
      String jumin,
      String doctorCode,
      String suname,
      List<int> signImageBuffer});
}

/// @nodoc
class __$$SocketSaveConsentArgsImplCopyWithImpl<$Res>
    extends _$SocketArgsCopyWithImpl<$Res, _$SocketSaveConsentArgsImpl>
    implements _$$SocketSaveConsentArgsImplCopyWith<$Res> {
  __$$SocketSaveConsentArgsImplCopyWithImpl(_$SocketSaveConsentArgsImpl _value,
      $Res Function(_$SocketSaveConsentArgsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? private = null,
    Object? marketing = null,
    Object? jumin = null,
    Object? doctorCode = null,
    Object? suname = null,
    Object? signImageBuffer = null,
  }) {
    return _then(_$SocketSaveConsentArgsImpl(
      private: null == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      marketing: null == marketing
          ? _value.marketing
          : marketing // ignore: cast_nullable_to_non_nullable
              as bool,
      jumin: null == jumin
          ? _value.jumin
          : jumin // ignore: cast_nullable_to_non_nullable
              as String,
      doctorCode: null == doctorCode
          ? _value.doctorCode
          : doctorCode // ignore: cast_nullable_to_non_nullable
              as String,
      suname: null == suname
          ? _value.suname
          : suname // ignore: cast_nullable_to_non_nullable
              as String,
      signImageBuffer: null == signImageBuffer
          ? _value._signImageBuffer
          : signImageBuffer // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketSaveConsentArgsImpl implements SocketSaveConsentArgs {
  const _$SocketSaveConsentArgsImpl(
      {required this.private,
      required this.marketing,
      required this.jumin,
      required this.doctorCode,
      required this.suname,
      required final List<int> signImageBuffer,
      final String? $type})
      : _signImageBuffer = signImageBuffer,
        $type = $type ?? 'saveConsent';

  factory _$SocketSaveConsentArgsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketSaveConsentArgsImplFromJson(json);

  @override
  final bool private;
  @override
  final bool marketing;
  @override
  final String jumin;
  @override
  final String doctorCode;
  @override
  final String suname;
  final List<int> _signImageBuffer;
  @override
  List<int> get signImageBuffer {
    if (_signImageBuffer is EqualUnmodifiableListView) return _signImageBuffer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_signImageBuffer);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SocketArgs.saveConsent(private: $private, marketing: $marketing, jumin: $jumin, doctorCode: $doctorCode, suname: $suname, signImageBuffer: $signImageBuffer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketSaveConsentArgsImpl &&
            (identical(other.private, private) || other.private == private) &&
            (identical(other.marketing, marketing) ||
                other.marketing == marketing) &&
            (identical(other.jumin, jumin) || other.jumin == jumin) &&
            (identical(other.doctorCode, doctorCode) ||
                other.doctorCode == doctorCode) &&
            (identical(other.suname, suname) || other.suname == suname) &&
            const DeepCollectionEquality()
                .equals(other._signImageBuffer, _signImageBuffer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      private,
      marketing,
      jumin,
      doctorCode,
      suname,
      const DeepCollectionEquality().hash(_signImageBuffer));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketSaveConsentArgsImplCopyWith<_$SocketSaveConsentArgsImpl>
      get copyWith => __$$SocketSaveConsentArgsImplCopyWithImpl<
          _$SocketSaveConsentArgsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String jumin, String doctorCode) checkConsent,
    required TResult Function(bool private, bool marketing, String jumin,
            String doctorCode, String suname, List<int> signImageBuffer)
        saveConsent,
    required TResult Function(String doctorCode, String jumin, String suname)
        fetchHealthCheckUpList,
  }) {
    return saveConsent(
        private, marketing, jumin, doctorCode, suname, signImageBuffer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String jumin, String doctorCode)? checkConsent,
    TResult? Function(bool private, bool marketing, String jumin,
            String doctorCode, String suname, List<int> signImageBuffer)?
        saveConsent,
    TResult? Function(String doctorCode, String jumin, String suname)?
        fetchHealthCheckUpList,
  }) {
    return saveConsent?.call(
        private, marketing, jumin, doctorCode, suname, signImageBuffer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String jumin, String doctorCode)? checkConsent,
    TResult Function(bool private, bool marketing, String jumin,
            String doctorCode, String suname, List<int> signImageBuffer)?
        saveConsent,
    TResult Function(String doctorCode, String jumin, String suname)?
        fetchHealthCheckUpList,
    required TResult orElse(),
  }) {
    if (saveConsent != null) {
      return saveConsent(
          private, marketing, jumin, doctorCode, suname, signImageBuffer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocketCheckConsentArgs value) checkConsent,
    required TResult Function(SocketSaveConsentArgs value) saveConsent,
    required TResult Function(SocketFetchHealthCheckUpListArgs value)
        fetchHealthCheckUpList,
  }) {
    return saveConsent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketCheckConsentArgs value)? checkConsent,
    TResult? Function(SocketSaveConsentArgs value)? saveConsent,
    TResult? Function(SocketFetchHealthCheckUpListArgs value)?
        fetchHealthCheckUpList,
  }) {
    return saveConsent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketCheckConsentArgs value)? checkConsent,
    TResult Function(SocketSaveConsentArgs value)? saveConsent,
    TResult Function(SocketFetchHealthCheckUpListArgs value)?
        fetchHealthCheckUpList,
    required TResult orElse(),
  }) {
    if (saveConsent != null) {
      return saveConsent(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketSaveConsentArgsImplToJson(
      this,
    );
  }
}

abstract class SocketSaveConsentArgs implements SocketArgs {
  const factory SocketSaveConsentArgs(
      {required final bool private,
      required final bool marketing,
      required final String jumin,
      required final String doctorCode,
      required final String suname,
      required final List<int> signImageBuffer}) = _$SocketSaveConsentArgsImpl;

  factory SocketSaveConsentArgs.fromJson(Map<String, dynamic> json) =
      _$SocketSaveConsentArgsImpl.fromJson;

  bool get private;
  bool get marketing;
  @override
  String get jumin;
  @override
  String get doctorCode;
  String get suname;
  List<int> get signImageBuffer;
  @override
  @JsonKey(ignore: true)
  _$$SocketSaveConsentArgsImplCopyWith<_$SocketSaveConsentArgsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketFetchHealthCheckUpListArgsImplCopyWith<$Res>
    implements $SocketArgsCopyWith<$Res> {
  factory _$$SocketFetchHealthCheckUpListArgsImplCopyWith(
          _$SocketFetchHealthCheckUpListArgsImpl value,
          $Res Function(_$SocketFetchHealthCheckUpListArgsImpl) then) =
      __$$SocketFetchHealthCheckUpListArgsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String doctorCode, String jumin, String suname});
}

/// @nodoc
class __$$SocketFetchHealthCheckUpListArgsImplCopyWithImpl<$Res>
    extends _$SocketArgsCopyWithImpl<$Res,
        _$SocketFetchHealthCheckUpListArgsImpl>
    implements _$$SocketFetchHealthCheckUpListArgsImplCopyWith<$Res> {
  __$$SocketFetchHealthCheckUpListArgsImplCopyWithImpl(
      _$SocketFetchHealthCheckUpListArgsImpl _value,
      $Res Function(_$SocketFetchHealthCheckUpListArgsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorCode = null,
    Object? jumin = null,
    Object? suname = null,
  }) {
    return _then(_$SocketFetchHealthCheckUpListArgsImpl(
      doctorCode: null == doctorCode
          ? _value.doctorCode
          : doctorCode // ignore: cast_nullable_to_non_nullable
              as String,
      jumin: null == jumin
          ? _value.jumin
          : jumin // ignore: cast_nullable_to_non_nullable
              as String,
      suname: null == suname
          ? _value.suname
          : suname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketFetchHealthCheckUpListArgsImpl
    implements SocketFetchHealthCheckUpListArgs {
  const _$SocketFetchHealthCheckUpListArgsImpl(
      {required this.doctorCode,
      required this.jumin,
      required this.suname,
      final String? $type})
      : $type = $type ?? 'fetchHealthCheckUpList';

  factory _$SocketFetchHealthCheckUpListArgsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SocketFetchHealthCheckUpListArgsImplFromJson(json);

  @override
  final String doctorCode;
  @override
  final String jumin;
  @override
  final String suname;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SocketArgs.fetchHealthCheckUpList(doctorCode: $doctorCode, jumin: $jumin, suname: $suname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketFetchHealthCheckUpListArgsImpl &&
            (identical(other.doctorCode, doctorCode) ||
                other.doctorCode == doctorCode) &&
            (identical(other.jumin, jumin) || other.jumin == jumin) &&
            (identical(other.suname, suname) || other.suname == suname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, doctorCode, jumin, suname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketFetchHealthCheckUpListArgsImplCopyWith<
          _$SocketFetchHealthCheckUpListArgsImpl>
      get copyWith => __$$SocketFetchHealthCheckUpListArgsImplCopyWithImpl<
          _$SocketFetchHealthCheckUpListArgsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String jumin, String doctorCode) checkConsent,
    required TResult Function(bool private, bool marketing, String jumin,
            String doctorCode, String suname, List<int> signImageBuffer)
        saveConsent,
    required TResult Function(String doctorCode, String jumin, String suname)
        fetchHealthCheckUpList,
  }) {
    return fetchHealthCheckUpList(doctorCode, jumin, suname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String jumin, String doctorCode)? checkConsent,
    TResult? Function(bool private, bool marketing, String jumin,
            String doctorCode, String suname, List<int> signImageBuffer)?
        saveConsent,
    TResult? Function(String doctorCode, String jumin, String suname)?
        fetchHealthCheckUpList,
  }) {
    return fetchHealthCheckUpList?.call(doctorCode, jumin, suname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String jumin, String doctorCode)? checkConsent,
    TResult Function(bool private, bool marketing, String jumin,
            String doctorCode, String suname, List<int> signImageBuffer)?
        saveConsent,
    TResult Function(String doctorCode, String jumin, String suname)?
        fetchHealthCheckUpList,
    required TResult orElse(),
  }) {
    if (fetchHealthCheckUpList != null) {
      return fetchHealthCheckUpList(doctorCode, jumin, suname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocketCheckConsentArgs value) checkConsent,
    required TResult Function(SocketSaveConsentArgs value) saveConsent,
    required TResult Function(SocketFetchHealthCheckUpListArgs value)
        fetchHealthCheckUpList,
  }) {
    return fetchHealthCheckUpList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketCheckConsentArgs value)? checkConsent,
    TResult? Function(SocketSaveConsentArgs value)? saveConsent,
    TResult? Function(SocketFetchHealthCheckUpListArgs value)?
        fetchHealthCheckUpList,
  }) {
    return fetchHealthCheckUpList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketCheckConsentArgs value)? checkConsent,
    TResult Function(SocketSaveConsentArgs value)? saveConsent,
    TResult Function(SocketFetchHealthCheckUpListArgs value)?
        fetchHealthCheckUpList,
    required TResult orElse(),
  }) {
    if (fetchHealthCheckUpList != null) {
      return fetchHealthCheckUpList(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketFetchHealthCheckUpListArgsImplToJson(
      this,
    );
  }
}

abstract class SocketFetchHealthCheckUpListArgs implements SocketArgs {
  const factory SocketFetchHealthCheckUpListArgs(
      {required final String doctorCode,
      required final String jumin,
      required final String suname}) = _$SocketFetchHealthCheckUpListArgsImpl;

  factory SocketFetchHealthCheckUpListArgs.fromJson(Map<String, dynamic> json) =
      _$SocketFetchHealthCheckUpListArgsImpl.fromJson;

  @override
  String get doctorCode;
  @override
  String get jumin;
  String get suname;
  @override
  @JsonKey(ignore: true)
  _$$SocketFetchHealthCheckUpListArgsImplCopyWith<
          _$SocketFetchHealthCheckUpListArgsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

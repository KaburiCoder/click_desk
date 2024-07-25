// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocketRes _$SocketResFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'checkConsent':
      return SocketCheckConsentRes.fromJson(json);
    case 'saveConsent':
      return SocketSaveConsentRes.fromJson(json);
    case 'fetchHealthCheckUpList':
      return SocketFetchHealthCheckUpListRes.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SocketRes',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SocketRes {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isConsented) checkConsent,
    required TResult Function(bool isConsented) saveConsent,
    required TResult Function(List<GumjinState> gumjinList)
        fetchHealthCheckUpList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isConsented)? checkConsent,
    TResult? Function(bool isConsented)? saveConsent,
    TResult? Function(List<GumjinState> gumjinList)? fetchHealthCheckUpList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isConsented)? checkConsent,
    TResult Function(bool isConsented)? saveConsent,
    TResult Function(List<GumjinState> gumjinList)? fetchHealthCheckUpList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocketCheckConsentRes value) checkConsent,
    required TResult Function(SocketSaveConsentRes value) saveConsent,
    required TResult Function(SocketFetchHealthCheckUpListRes value)
        fetchHealthCheckUpList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketCheckConsentRes value)? checkConsent,
    TResult? Function(SocketSaveConsentRes value)? saveConsent,
    TResult? Function(SocketFetchHealthCheckUpListRes value)?
        fetchHealthCheckUpList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketCheckConsentRes value)? checkConsent,
    TResult Function(SocketSaveConsentRes value)? saveConsent,
    TResult Function(SocketFetchHealthCheckUpListRes value)?
        fetchHealthCheckUpList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketResCopyWith<$Res> {
  factory $SocketResCopyWith(SocketRes value, $Res Function(SocketRes) then) =
      _$SocketResCopyWithImpl<$Res, SocketRes>;
}

/// @nodoc
class _$SocketResCopyWithImpl<$Res, $Val extends SocketRes>
    implements $SocketResCopyWith<$Res> {
  _$SocketResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SocketCheckConsentResImplCopyWith<$Res> {
  factory _$$SocketCheckConsentResImplCopyWith(
          _$SocketCheckConsentResImpl value,
          $Res Function(_$SocketCheckConsentResImpl) then) =
      __$$SocketCheckConsentResImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isConsented});
}

/// @nodoc
class __$$SocketCheckConsentResImplCopyWithImpl<$Res>
    extends _$SocketResCopyWithImpl<$Res, _$SocketCheckConsentResImpl>
    implements _$$SocketCheckConsentResImplCopyWith<$Res> {
  __$$SocketCheckConsentResImplCopyWithImpl(_$SocketCheckConsentResImpl _value,
      $Res Function(_$SocketCheckConsentResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConsented = null,
  }) {
    return _then(_$SocketCheckConsentResImpl(
      isConsented: null == isConsented
          ? _value.isConsented
          : isConsented // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketCheckConsentResImpl implements SocketCheckConsentRes {
  const _$SocketCheckConsentResImpl(
      {this.isConsented = false, final String? $type})
      : $type = $type ?? 'checkConsent';

  factory _$SocketCheckConsentResImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketCheckConsentResImplFromJson(json);

  @override
  @JsonKey()
  final bool isConsented;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SocketRes.checkConsent(isConsented: $isConsented)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketCheckConsentResImpl &&
            (identical(other.isConsented, isConsented) ||
                other.isConsented == isConsented));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isConsented);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketCheckConsentResImplCopyWith<_$SocketCheckConsentResImpl>
      get copyWith => __$$SocketCheckConsentResImplCopyWithImpl<
          _$SocketCheckConsentResImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isConsented) checkConsent,
    required TResult Function(bool isConsented) saveConsent,
    required TResult Function(List<GumjinState> gumjinList)
        fetchHealthCheckUpList,
  }) {
    return checkConsent(isConsented);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isConsented)? checkConsent,
    TResult? Function(bool isConsented)? saveConsent,
    TResult? Function(List<GumjinState> gumjinList)? fetchHealthCheckUpList,
  }) {
    return checkConsent?.call(isConsented);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isConsented)? checkConsent,
    TResult Function(bool isConsented)? saveConsent,
    TResult Function(List<GumjinState> gumjinList)? fetchHealthCheckUpList,
    required TResult orElse(),
  }) {
    if (checkConsent != null) {
      return checkConsent(isConsented);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocketCheckConsentRes value) checkConsent,
    required TResult Function(SocketSaveConsentRes value) saveConsent,
    required TResult Function(SocketFetchHealthCheckUpListRes value)
        fetchHealthCheckUpList,
  }) {
    return checkConsent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketCheckConsentRes value)? checkConsent,
    TResult? Function(SocketSaveConsentRes value)? saveConsent,
    TResult? Function(SocketFetchHealthCheckUpListRes value)?
        fetchHealthCheckUpList,
  }) {
    return checkConsent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketCheckConsentRes value)? checkConsent,
    TResult Function(SocketSaveConsentRes value)? saveConsent,
    TResult Function(SocketFetchHealthCheckUpListRes value)?
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
    return _$$SocketCheckConsentResImplToJson(
      this,
    );
  }
}

abstract class SocketCheckConsentRes implements SocketRes {
  const factory SocketCheckConsentRes({final bool isConsented}) =
      _$SocketCheckConsentResImpl;

  factory SocketCheckConsentRes.fromJson(Map<String, dynamic> json) =
      _$SocketCheckConsentResImpl.fromJson;

  bool get isConsented;
  @JsonKey(ignore: true)
  _$$SocketCheckConsentResImplCopyWith<_$SocketCheckConsentResImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketSaveConsentResImplCopyWith<$Res> {
  factory _$$SocketSaveConsentResImplCopyWith(_$SocketSaveConsentResImpl value,
          $Res Function(_$SocketSaveConsentResImpl) then) =
      __$$SocketSaveConsentResImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isConsented});
}

/// @nodoc
class __$$SocketSaveConsentResImplCopyWithImpl<$Res>
    extends _$SocketResCopyWithImpl<$Res, _$SocketSaveConsentResImpl>
    implements _$$SocketSaveConsentResImplCopyWith<$Res> {
  __$$SocketSaveConsentResImplCopyWithImpl(_$SocketSaveConsentResImpl _value,
      $Res Function(_$SocketSaveConsentResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConsented = null,
  }) {
    return _then(_$SocketSaveConsentResImpl(
      isConsented: null == isConsented
          ? _value.isConsented
          : isConsented // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketSaveConsentResImpl implements SocketSaveConsentRes {
  const _$SocketSaveConsentResImpl(
      {this.isConsented = false, final String? $type})
      : $type = $type ?? 'saveConsent';

  factory _$SocketSaveConsentResImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketSaveConsentResImplFromJson(json);

  @override
  @JsonKey()
  final bool isConsented;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SocketRes.saveConsent(isConsented: $isConsented)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketSaveConsentResImpl &&
            (identical(other.isConsented, isConsented) ||
                other.isConsented == isConsented));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isConsented);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketSaveConsentResImplCopyWith<_$SocketSaveConsentResImpl>
      get copyWith =>
          __$$SocketSaveConsentResImplCopyWithImpl<_$SocketSaveConsentResImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isConsented) checkConsent,
    required TResult Function(bool isConsented) saveConsent,
    required TResult Function(List<GumjinState> gumjinList)
        fetchHealthCheckUpList,
  }) {
    return saveConsent(isConsented);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isConsented)? checkConsent,
    TResult? Function(bool isConsented)? saveConsent,
    TResult? Function(List<GumjinState> gumjinList)? fetchHealthCheckUpList,
  }) {
    return saveConsent?.call(isConsented);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isConsented)? checkConsent,
    TResult Function(bool isConsented)? saveConsent,
    TResult Function(List<GumjinState> gumjinList)? fetchHealthCheckUpList,
    required TResult orElse(),
  }) {
    if (saveConsent != null) {
      return saveConsent(isConsented);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocketCheckConsentRes value) checkConsent,
    required TResult Function(SocketSaveConsentRes value) saveConsent,
    required TResult Function(SocketFetchHealthCheckUpListRes value)
        fetchHealthCheckUpList,
  }) {
    return saveConsent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketCheckConsentRes value)? checkConsent,
    TResult? Function(SocketSaveConsentRes value)? saveConsent,
    TResult? Function(SocketFetchHealthCheckUpListRes value)?
        fetchHealthCheckUpList,
  }) {
    return saveConsent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketCheckConsentRes value)? checkConsent,
    TResult Function(SocketSaveConsentRes value)? saveConsent,
    TResult Function(SocketFetchHealthCheckUpListRes value)?
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
    return _$$SocketSaveConsentResImplToJson(
      this,
    );
  }
}

abstract class SocketSaveConsentRes implements SocketRes {
  const factory SocketSaveConsentRes({final bool isConsented}) =
      _$SocketSaveConsentResImpl;

  factory SocketSaveConsentRes.fromJson(Map<String, dynamic> json) =
      _$SocketSaveConsentResImpl.fromJson;

  bool get isConsented;
  @JsonKey(ignore: true)
  _$$SocketSaveConsentResImplCopyWith<_$SocketSaveConsentResImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketFetchHealthCheckUpListResImplCopyWith<$Res> {
  factory _$$SocketFetchHealthCheckUpListResImplCopyWith(
          _$SocketFetchHealthCheckUpListResImpl value,
          $Res Function(_$SocketFetchHealthCheckUpListResImpl) then) =
      __$$SocketFetchHealthCheckUpListResImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GumjinState> gumjinList});
}

/// @nodoc
class __$$SocketFetchHealthCheckUpListResImplCopyWithImpl<$Res>
    extends _$SocketResCopyWithImpl<$Res, _$SocketFetchHealthCheckUpListResImpl>
    implements _$$SocketFetchHealthCheckUpListResImplCopyWith<$Res> {
  __$$SocketFetchHealthCheckUpListResImplCopyWithImpl(
      _$SocketFetchHealthCheckUpListResImpl _value,
      $Res Function(_$SocketFetchHealthCheckUpListResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gumjinList = null,
  }) {
    return _then(_$SocketFetchHealthCheckUpListResImpl(
      gumjinList: null == gumjinList
          ? _value._gumjinList
          : gumjinList // ignore: cast_nullable_to_non_nullable
              as List<GumjinState>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketFetchHealthCheckUpListResImpl
    implements SocketFetchHealthCheckUpListRes {
  const _$SocketFetchHealthCheckUpListResImpl(
      {final List<GumjinState> gumjinList = const [], final String? $type})
      : _gumjinList = gumjinList,
        $type = $type ?? 'fetchHealthCheckUpList';

  factory _$SocketFetchHealthCheckUpListResImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SocketFetchHealthCheckUpListResImplFromJson(json);

  final List<GumjinState> _gumjinList;
  @override
  @JsonKey()
  List<GumjinState> get gumjinList {
    if (_gumjinList is EqualUnmodifiableListView) return _gumjinList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gumjinList);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SocketRes.fetchHealthCheckUpList(gumjinList: $gumjinList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketFetchHealthCheckUpListResImpl &&
            const DeepCollectionEquality()
                .equals(other._gumjinList, _gumjinList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_gumjinList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketFetchHealthCheckUpListResImplCopyWith<
          _$SocketFetchHealthCheckUpListResImpl>
      get copyWith => __$$SocketFetchHealthCheckUpListResImplCopyWithImpl<
          _$SocketFetchHealthCheckUpListResImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isConsented) checkConsent,
    required TResult Function(bool isConsented) saveConsent,
    required TResult Function(List<GumjinState> gumjinList)
        fetchHealthCheckUpList,
  }) {
    return fetchHealthCheckUpList(gumjinList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isConsented)? checkConsent,
    TResult? Function(bool isConsented)? saveConsent,
    TResult? Function(List<GumjinState> gumjinList)? fetchHealthCheckUpList,
  }) {
    return fetchHealthCheckUpList?.call(gumjinList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isConsented)? checkConsent,
    TResult Function(bool isConsented)? saveConsent,
    TResult Function(List<GumjinState> gumjinList)? fetchHealthCheckUpList,
    required TResult orElse(),
  }) {
    if (fetchHealthCheckUpList != null) {
      return fetchHealthCheckUpList(gumjinList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocketCheckConsentRes value) checkConsent,
    required TResult Function(SocketSaveConsentRes value) saveConsent,
    required TResult Function(SocketFetchHealthCheckUpListRes value)
        fetchHealthCheckUpList,
  }) {
    return fetchHealthCheckUpList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketCheckConsentRes value)? checkConsent,
    TResult? Function(SocketSaveConsentRes value)? saveConsent,
    TResult? Function(SocketFetchHealthCheckUpListRes value)?
        fetchHealthCheckUpList,
  }) {
    return fetchHealthCheckUpList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketCheckConsentRes value)? checkConsent,
    TResult Function(SocketSaveConsentRes value)? saveConsent,
    TResult Function(SocketFetchHealthCheckUpListRes value)?
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
    return _$$SocketFetchHealthCheckUpListResImplToJson(
      this,
    );
  }
}

abstract class SocketFetchHealthCheckUpListRes implements SocketRes {
  const factory SocketFetchHealthCheckUpListRes(
          {final List<GumjinState> gumjinList}) =
      _$SocketFetchHealthCheckUpListResImpl;

  factory SocketFetchHealthCheckUpListRes.fromJson(Map<String, dynamic> json) =
      _$SocketFetchHealthCheckUpListResImpl.fromJson;

  List<GumjinState> get gumjinList;
  @JsonKey(ignore: true)
  _$$SocketFetchHealthCheckUpListResImplCopyWith<
          _$SocketFetchHealthCheckUpListResImpl>
      get copyWith => throw _privateConstructorUsedError;
}

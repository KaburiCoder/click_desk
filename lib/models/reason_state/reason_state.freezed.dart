// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reason_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReasonState _$ReasonStateFromJson(Map<String, dynamic> json) {
  return _ReasonState.fromJson(json);
}

/// @nodoc
mixin _$ReasonState {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get seq => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<ReasonSub> get subs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReasonStateCopyWith<ReasonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReasonStateCopyWith<$Res> {
  factory $ReasonStateCopyWith(
          ReasonState value, $Res Function(ReasonState) then) =
      _$ReasonStateCopyWithImpl<$Res, ReasonState>;
  @useResult
  $Res call(
      {String id, String userId, int seq, String text, List<ReasonSub> subs});
}

/// @nodoc
class _$ReasonStateCopyWithImpl<$Res, $Val extends ReasonState>
    implements $ReasonStateCopyWith<$Res> {
  _$ReasonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? seq = null,
    Object? text = null,
    Object? subs = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      subs: null == subs
          ? _value.subs
          : subs // ignore: cast_nullable_to_non_nullable
              as List<ReasonSub>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReasonStateImplCopyWith<$Res>
    implements $ReasonStateCopyWith<$Res> {
  factory _$$ReasonStateImplCopyWith(
          _$ReasonStateImpl value, $Res Function(_$ReasonStateImpl) then) =
      __$$ReasonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String userId, int seq, String text, List<ReasonSub> subs});
}

/// @nodoc
class __$$ReasonStateImplCopyWithImpl<$Res>
    extends _$ReasonStateCopyWithImpl<$Res, _$ReasonStateImpl>
    implements _$$ReasonStateImplCopyWith<$Res> {
  __$$ReasonStateImplCopyWithImpl(
      _$ReasonStateImpl _value, $Res Function(_$ReasonStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? seq = null,
    Object? text = null,
    Object? subs = null,
  }) {
    return _then(_$ReasonStateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      subs: null == subs
          ? _value._subs
          : subs // ignore: cast_nullable_to_non_nullable
              as List<ReasonSub>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReasonStateImpl extends _ReasonState {
  const _$ReasonStateImpl(
      {this.id = "",
      this.userId = "",
      this.seq = 0,
      this.text = "",
      final List<ReasonSub> subs = const []})
      : _subs = subs,
        super._();

  factory _$ReasonStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReasonStateImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String userId;
  @override
  @JsonKey()
  final int seq;
  @override
  @JsonKey()
  final String text;
  final List<ReasonSub> _subs;
  @override
  @JsonKey()
  List<ReasonSub> get subs {
    if (_subs is EqualUnmodifiableListView) return _subs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subs);
  }

  @override
  String toString() {
    return 'ReasonState(id: $id, userId: $userId, seq: $seq, text: $text, subs: $subs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReasonStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._subs, _subs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, seq, text,
      const DeepCollectionEquality().hash(_subs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReasonStateImplCopyWith<_$ReasonStateImpl> get copyWith =>
      __$$ReasonStateImplCopyWithImpl<_$ReasonStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReasonStateImplToJson(
      this,
    );
  }
}

abstract class _ReasonState extends ReasonState {
  const factory _ReasonState(
      {final String id,
      final String userId,
      final int seq,
      final String text,
      final List<ReasonSub> subs}) = _$ReasonStateImpl;
  const _ReasonState._() : super._();

  factory _ReasonState.fromJson(Map<String, dynamic> json) =
      _$ReasonStateImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  int get seq;
  @override
  String get text;
  @override
  List<ReasonSub> get subs;
  @override
  @JsonKey(ignore: true)
  _$$ReasonStateImplCopyWith<_$ReasonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReasonSub _$ReasonSubFromJson(Map<String, dynamic> json) {
  return _ReasonSub.fromJson(json);
}

/// @nodoc
mixin _$ReasonSub {
  int get seq => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<ReasonSub> get subs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReasonSubCopyWith<ReasonSub> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReasonSubCopyWith<$Res> {
  factory $ReasonSubCopyWith(ReasonSub value, $Res Function(ReasonSub) then) =
      _$ReasonSubCopyWithImpl<$Res, ReasonSub>;
  @useResult
  $Res call({int seq, String text, List<ReasonSub> subs});
}

/// @nodoc
class _$ReasonSubCopyWithImpl<$Res, $Val extends ReasonSub>
    implements $ReasonSubCopyWith<$Res> {
  _$ReasonSubCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seq = null,
    Object? text = null,
    Object? subs = null,
  }) {
    return _then(_value.copyWith(
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      subs: null == subs
          ? _value.subs
          : subs // ignore: cast_nullable_to_non_nullable
              as List<ReasonSub>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReasonSubImplCopyWith<$Res>
    implements $ReasonSubCopyWith<$Res> {
  factory _$$ReasonSubImplCopyWith(
          _$ReasonSubImpl value, $Res Function(_$ReasonSubImpl) then) =
      __$$ReasonSubImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int seq, String text, List<ReasonSub> subs});
}

/// @nodoc
class __$$ReasonSubImplCopyWithImpl<$Res>
    extends _$ReasonSubCopyWithImpl<$Res, _$ReasonSubImpl>
    implements _$$ReasonSubImplCopyWith<$Res> {
  __$$ReasonSubImplCopyWithImpl(
      _$ReasonSubImpl _value, $Res Function(_$ReasonSubImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seq = null,
    Object? text = null,
    Object? subs = null,
  }) {
    return _then(_$ReasonSubImpl(
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      subs: null == subs
          ? _value._subs
          : subs // ignore: cast_nullable_to_non_nullable
              as List<ReasonSub>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReasonSubImpl implements _ReasonSub {
  const _$ReasonSubImpl(
      {this.seq = 0, this.text = "", final List<ReasonSub> subs = const []})
      : _subs = subs;

  factory _$ReasonSubImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReasonSubImplFromJson(json);

  @override
  @JsonKey()
  final int seq;
  @override
  @JsonKey()
  final String text;
  final List<ReasonSub> _subs;
  @override
  @JsonKey()
  List<ReasonSub> get subs {
    if (_subs is EqualUnmodifiableListView) return _subs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subs);
  }

  @override
  String toString() {
    return 'ReasonSub(seq: $seq, text: $text, subs: $subs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReasonSubImpl &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._subs, _subs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, seq, text, const DeepCollectionEquality().hash(_subs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReasonSubImplCopyWith<_$ReasonSubImpl> get copyWith =>
      __$$ReasonSubImplCopyWithImpl<_$ReasonSubImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReasonSubImplToJson(
      this,
    );
  }
}

abstract class _ReasonSub implements ReasonSub {
  const factory _ReasonSub(
      {final int seq,
      final String text,
      final List<ReasonSub> subs}) = _$ReasonSubImpl;

  factory _ReasonSub.fromJson(Map<String, dynamic> json) =
      _$ReasonSubImpl.fromJson;

  @override
  int get seq;
  @override
  String get text;
  @override
  List<ReasonSub> get subs;
  @override
  @JsonKey(ignore: true)
  _$$ReasonSubImplCopyWith<_$ReasonSubImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

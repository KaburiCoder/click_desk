// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_files.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdFile _$AdFileFromJson(Map<String, dynamic> json) {
  return _AdFile.fromJson(json);
}

/// @nodoc
mixin _$AdFile {
  String get userId => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  String get fileType => throw _privateConstructorUsedError;
  int get seq => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdFileCopyWith<AdFile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdFileCopyWith<$Res> {
  factory $AdFileCopyWith(AdFile value, $Res Function(AdFile) then) =
      _$AdFileCopyWithImpl<$Res, AdFile>;
  @useResult
  $Res call({String userId, String fileName, String fileType, int seq});
}

/// @nodoc
class _$AdFileCopyWithImpl<$Res, $Val extends AdFile>
    implements $AdFileCopyWith<$Res> {
  _$AdFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? fileName = null,
    Object? fileType = null,
    Object? seq = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdFileImplCopyWith<$Res> implements $AdFileCopyWith<$Res> {
  factory _$$AdFileImplCopyWith(
          _$AdFileImpl value, $Res Function(_$AdFileImpl) then) =
      __$$AdFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String fileName, String fileType, int seq});
}

/// @nodoc
class __$$AdFileImplCopyWithImpl<$Res>
    extends _$AdFileCopyWithImpl<$Res, _$AdFileImpl>
    implements _$$AdFileImplCopyWith<$Res> {
  __$$AdFileImplCopyWithImpl(
      _$AdFileImpl _value, $Res Function(_$AdFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? fileName = null,
    Object? fileType = null,
    Object? seq = null,
  }) {
    return _then(_$AdFileImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdFileImpl implements _AdFile {
  const _$AdFileImpl(
      {this.userId = "", this.fileName = "", this.fileType = "", this.seq = 0});

  factory _$AdFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdFileImplFromJson(json);

  @override
  @JsonKey()
  final String userId;
  @override
  @JsonKey()
  final String fileName;
  @override
  @JsonKey()
  final String fileType;
  @override
  @JsonKey()
  final int seq;

  @override
  String toString() {
    return 'AdFile(userId: $userId, fileName: $fileName, fileType: $fileType, seq: $seq)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdFileImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.seq, seq) || other.seq == seq));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, fileName, fileType, seq);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdFileImplCopyWith<_$AdFileImpl> get copyWith =>
      __$$AdFileImplCopyWithImpl<_$AdFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdFileImplToJson(
      this,
    );
  }
}

abstract class _AdFile implements AdFile {
  const factory _AdFile(
      {final String userId,
      final String fileName,
      final String fileType,
      final int seq}) = _$AdFileImpl;

  factory _AdFile.fromJson(Map<String, dynamic> json) = _$AdFileImpl.fromJson;

  @override
  String get userId;
  @override
  String get fileName;
  @override
  String get fileType;
  @override
  int get seq;
  @override
  @JsonKey(ignore: true)
  _$$AdFileImplCopyWith<_$AdFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

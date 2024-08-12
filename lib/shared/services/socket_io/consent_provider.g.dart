// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consent_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsentInitStateImpl _$$ConsentInitStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsentInitStateImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConsentInitStateImplToJson(
        _$ConsentInitStateImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ConsentLoadingStateImpl _$$ConsentLoadingStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsentLoadingStateImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConsentLoadingStateImplToJson(
        _$ConsentLoadingStateImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ConsentPassStateImpl _$$ConsentPassStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsentPassStateImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConsentPassStateImplToJson(
        _$ConsentPassStateImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ConsentMustCheckStateImpl _$$ConsentMustCheckStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsentMustCheckStateImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConsentMustCheckStateImplToJson(
        _$ConsentMustCheckStateImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ConsentErrorStateImpl _$$ConsentErrorStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsentErrorStateImpl(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConsentErrorStateImplToJson(
        _$ConsentErrorStateImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$consentHash() => r'c782bc0fcc3bb9ffdae2b5bc8e14a91ab1e94329';

/// See also [Consent].
@ProviderFor(Consent)
final consentProvider =
    AutoDisposeNotifierProvider<Consent, ConsentState>.internal(
  Consent.new,
  name: r'consentProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$consentHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Consent = AutoDisposeNotifier<ConsentState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

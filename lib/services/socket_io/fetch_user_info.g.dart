// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_user_info.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchUserInfoHash() => r'67cd80948a60563a1547ae86b46563796d81d751';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [fetchUserInfo].
@ProviderFor(fetchUserInfo)
const fetchUserInfoProvider = FetchUserInfoFamily();

/// See also [fetchUserInfo].
class FetchUserInfoFamily extends Family<AsyncValue<List<PatientState>>> {
  /// See also [fetchUserInfo].
  const FetchUserInfoFamily();

  /// See also [fetchUserInfo].
  FetchUserInfoProvider call(
    UserSearchParams params,
  ) {
    return FetchUserInfoProvider(
      params,
    );
  }

  @override
  FetchUserInfoProvider getProviderOverride(
    covariant FetchUserInfoProvider provider,
  ) {
    return call(
      provider.params,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchUserInfoProvider';
}

/// See also [fetchUserInfo].
class FetchUserInfoProvider
    extends AutoDisposeFutureProvider<List<PatientState>> {
  /// See also [fetchUserInfo].
  FetchUserInfoProvider(
    UserSearchParams params,
  ) : this._internal(
          (ref) => fetchUserInfo(
            ref as FetchUserInfoRef,
            params,
          ),
          from: fetchUserInfoProvider,
          name: r'fetchUserInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchUserInfoHash,
          dependencies: FetchUserInfoFamily._dependencies,
          allTransitiveDependencies:
              FetchUserInfoFamily._allTransitiveDependencies,
          params: params,
        );

  FetchUserInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final UserSearchParams params;

  @override
  Override overrideWith(
    FutureOr<List<PatientState>> Function(FetchUserInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchUserInfoProvider._internal(
        (ref) => create(ref as FetchUserInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        params: params,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<PatientState>> createElement() {
    return _FetchUserInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchUserInfoProvider && other.params == params;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchUserInfoRef on AutoDisposeFutureProviderRef<List<PatientState>> {
  /// The parameter `params` of this provider.
  UserSearchParams get params;
}

class _FetchUserInfoProviderElement
    extends AutoDisposeFutureProviderElement<List<PatientState>>
    with FetchUserInfoRef {
  _FetchUserInfoProviderElement(super.provider);

  @override
  UserSearchParams get params => (origin as FetchUserInfoProvider).params;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

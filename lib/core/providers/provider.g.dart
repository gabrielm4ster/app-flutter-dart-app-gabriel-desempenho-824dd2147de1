// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$restClientHash() => r'0ee58f1fd102b2016ed621885f1e8d52ed00da66';

/// Commons application provider services
///
/// Copied from [restClient].
@ProviderFor(restClient)
final restClientProvider = Provider<RestClient>.internal(
  restClient,
  name: r'restClientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$restClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RestClientRef = ProviderRef<RestClient>;
String _$autenticacaoRepositoryHash() =>
    r'f8ce48a4255187ef0265bc28073d4a75184af555';

/// Application's repositories providers
///
/// Copied from [autenticacaoRepository].
@ProviderFor(autenticacaoRepository)
final autenticacaoRepositoryProvider =
    Provider<AutenticacaoRepository>.internal(
  autenticacaoRepository,
  name: r'autenticacaoRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$autenticacaoRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AutenticacaoRepositoryRef = ProviderRef<AutenticacaoRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

import 'package:desempenho_esportivo/core/rest_client/rest_client.dart';
import 'package:desempenho_esportivo/repositories/autenticacao/autenticacao_repository.dart';
import 'package:desempenho_esportivo/repositories/autenticacao/autenticacao_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

/// Commons application provider services
@Riverpod(keepAlive: true)
RestClient restClient(RestClientRef ref) => RestClient();

/// Application's repositories providers
@Riverpod(keepAlive: true)
AutenticacaoRepository autenticacaoRepository(AutenticacaoRepositoryRef ref) =>
    AutenticacaoRepositoryImpl(ref.read(restClientProvider));

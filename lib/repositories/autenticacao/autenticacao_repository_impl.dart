import 'dart:convert';
import 'dart:developer';

import 'package:desempenho_esportivo/core/constants/api_keys.dart';
import 'package:desempenho_esportivo/core/constants/local_storage_keys.dart';
import 'package:desempenho_esportivo/core/exceptions/auth_exception.dart';
import 'package:desempenho_esportivo/core/exceptions/repository_exception.dart';
import 'package:desempenho_esportivo/core/fp/either.dart';
import 'package:desempenho_esportivo/core/fp/nil.dart';
import 'package:desempenho_esportivo/core/rest_client/interface/rest_client_interface.dart';
import 'package:desempenho_esportivo/repositories/autenticacao/autenticacao_repository.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AutenticacaoRepositoryImpl implements AutenticacaoRepository {
  AutenticacaoRepositoryImpl(this.restClient);

  RestClientInterface restClient;

  @override
  Future<Either<AuthException, Nil>> login(
    Map<String, dynamic> authData,
  ) async {
    try {
      final sp = await SharedPreferences.getInstance();

      restClient.options.baseUrl = ApiKeys.baseUrl;

      final Response(:data) =
          await restClient.unAuth.post<Map<String, dynamic>>(
        ApiKeys.login,
        data: {
          'email': authData['usuario'],
          'passoword': authData['senha'],
        },
      );

      sp.setString(LocalStorageKeys.userToken, json.encode(data!['token']));
      return Success(nil);
    } on DioException catch (e, s) {
      log('AutenticacaoRepositoryImpl: login', error: e, stackTrace: s);
      throw UnimplementedError();
    }
  }

  @override
  Future<Either<RepositoryException, Nil>> logout() {
    throw UnimplementedError();
  }
}

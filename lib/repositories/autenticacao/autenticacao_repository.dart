import 'package:desempenho_esportivo/core/exceptions/auth_exception.dart';
import 'package:desempenho_esportivo/core/exceptions/repository_exception.dart';
import 'package:desempenho_esportivo/core/fp/either.dart';
import 'package:desempenho_esportivo/core/fp/nil.dart';

abstract interface class AutenticacaoRepository {
  Future<Either<AuthException, Nil>> login(
    Map<String, dynamic> authData,
  );
  Future<Either<RepositoryException, Nil>> logout();
}

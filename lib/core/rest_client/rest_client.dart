import 'package:desempenho_esportivo/core/rest_client/interceptors/auth_interceptor.dart';
import 'package:desempenho_esportivo/core/rest_client/interceptors/connection_interceptor.dart';
import 'package:desempenho_esportivo/core/rest_client/interface/rest_client_interface.dart';

final class RestClient extends RestClientInterface {
  RestClient() : super() {
    interceptors.addAll(
      [
        ConnectionInterceptor(),
        AuthInterceptor(),
      ],
    );

    options.copyWith(
      receiveTimeout: const Duration(seconds: 60),
      sendTimeout: const Duration(seconds: 60),
    );
  }
  @override
  RestClient get auth {
    options.extra['DIO_AUTH_KEY'] = true;
    return this;
  }

  @override
  RestClient get unAuth {
    options.extra['DIO_AUTH_KEY'] = false;
    return this;
  }

  @override
  RestClient get connected => throw UnimplementedError();

  @override
  RestClient get unconnected => throw UnimplementedError();
}

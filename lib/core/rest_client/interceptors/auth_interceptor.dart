import 'dart:convert';
import 'dart:io';

import 'package:desempenho_esportivo/core/constants/api_keys.dart';
import 'package:desempenho_esportivo/core/constants/local_storage_keys.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final RequestOptions(:headers, :extra) = options;

    const authHeaderKey = 'Authorization';
    headers.remove(authHeaderKey);

    if (extra case {'DIO_AUTH_KEY': true}) {
      final sp = await SharedPreferences.getInstance();

      final userInfoString = sp.getString(LocalStorageKeys.userInfo);

      if (userInfoString != null) {
        dynamic userInfo = json.decode(userInfoString);

        options.baseUrl = ApiKeys.baseUrl;

        headers.addAll({authHeaderKey: 'Bearer ${userInfo['token']}'});
      }
    }
    handler.next(options);
  }

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final DioException(
      requestOptions: RequestOptions(:extra),
      :response,
    ) = err;

    if (extra case {'DIO_AUTH_KEY': true}) {
      if (response != null && response.statusCode == HttpStatus.forbidden) {
        // final BuildContext context =
        //     AppNavigatorKey.instance.navKey.currentContext!;

        // Navigator.of(context).pushNamedAndRemoveUntil(
        //   RouteGeneratorKeys.authLogin,
        //   (route) => false,
        // );
      }
    }

    handler.reject(err);
  }
}

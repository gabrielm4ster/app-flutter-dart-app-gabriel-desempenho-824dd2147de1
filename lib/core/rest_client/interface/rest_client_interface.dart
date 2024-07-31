import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';

abstract class RestClientInterface extends DioForNative {
  RestClientInterface get unAuth;
  RestClientInterface get auth;
  @visibleForTesting
  RestClientInterface get unconnected;
  @visibleForTesting
  RestClientInterface get connected;
}

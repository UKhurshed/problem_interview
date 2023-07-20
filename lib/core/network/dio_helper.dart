import 'dart:developer';

import 'package:dio/dio.dart';

class URL {
  static const base = 'https://api.github.com/';
}

class API {
  final dio = createDio();

  API._internal();

  static final _singleton = API._internal();

  factory API() => _singleton;

  static Dio createDio() {
    var dio = Dio(BaseOptions(baseUrl: URL.base));
    // dio.interceptors.add(AppInterceptor());
    return dio;
  }
}

class AppInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log("--> ${options.method.toUpperCase()} ${"${options.baseUrl}${options.path}"}");
    log("Headers:");
    options.headers.forEach((k, v) => log('$k: $v'));
    log("queryParameters:");
    options.queryParameters.forEach((k, v) => log('$k: $v'));
    if (options.data != null) {
      log("Body: ${options.data}");
    }
    log("--> END ${options.method.toUpperCase()}");
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log("<-- ${err.message} ${(err.response != null ? (err.response!.requestOptions.baseUrl + err.response!.requestOptions.path) : 'URL')}");
    log("${err.response != null ? err.response?.data : 'Unknown Error'}");
    log("<-- End error");
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log("<-- ${response.statusCode} ${"${response.requestOptions.baseUrl}${response.requestOptions.path}"}");
    log("Headers:");
    response.headers.forEach((k, v) => log('$k: $v'));
    log("Response: ${response.data}");
    log("<-- END HTTP");
  }
}

import 'package:dio/dio.dart';
import 'package:nectar/core/database/cache/cache_helper.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    options.headers['token'] = CacheHelper().getData(key: "token") != null
        ? "FOODAPI ${CacheHelper().getData(key: "token")}"
        : null;
    handler.next(options);
  }
}

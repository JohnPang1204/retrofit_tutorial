import 'package:dio/dio.dart';
import 'package:dio/src/dio_error.dart';
import 'package:dio/src/options.dart';
import 'package:dio/src/response.dart';
import 'package:retrofit_tutorial/common/interceptor_contract.dart';

class AirAsiaGroceryInterceptor implements InterceptorContract {
  @override
  Future onError(DioError error, ErrorInterceptorHandler handler) async {
    return handler.next(error);
  }

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers.addAll({
      kXClientId: '4415a5de-bb03-4cd7-b614-4b699ae83789',
      kXPlatform: 'WEBDESKTOP',
      kXChannel: '1',
      kXLang: 'en'
    });

    return handler.next(options);
  }

  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    return handler.next(response);
  }

  final String kXPlatform = 'X-PLATFORM';
  final String kXChannel = 'X-CHANNEL';
  final String kXClientId = 'X-CLIENT-ID';
  final String kXLang = 'X-LANG';
}

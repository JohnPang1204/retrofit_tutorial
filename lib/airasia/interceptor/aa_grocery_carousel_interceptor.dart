import 'package:dio/dio.dart';
import 'package:dio/src/dio_error.dart';
import 'package:dio/src/options.dart';
import 'package:dio/src/response.dart';
import 'package:retrofit_tutorial/common/interceptor_contract.dart';

class AirAsiaGroceryCarouselInterceptor implements InterceptorContract {
  @override
  Future onError(DioError error, ErrorInterceptorHandler handler) async {
    return handler.next(error);
  }

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers.addAll({
      kXClientId: '4415a5de-bb03-4cd7-b614-4b699ae83789',
      kPlatform: 'Android',
      kXChannel: '1',
      kXLang: 'en',
    });
    addDefaultQueryParams(options);

    return handler.next(options);
  }

  void addDefaultQueryParams(RequestOptions options) {
    final data = options.queryParameters;
    data['environment'] = 'dev';
    data['locale'] = 'en-gb';
    data['asc'] = 'sequence';
    data['api_key'] = 'blt3ada34ac485961fd';
    data['access_token'] = 'cse7bbd598b0db73f52c33e6da';
  }



  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    return handler.next(response);
  }

  final String kPlatform = 'sec-ch-ua-platform';
  final String kXChannel = 'X-CHANNEL';
  final String kXClientId = 'X-CLIENT-ID';
  final String kXLang = 'X-LANG';
  final String kOrigin = ' origin';
  final String kReferer = ' referer';
}

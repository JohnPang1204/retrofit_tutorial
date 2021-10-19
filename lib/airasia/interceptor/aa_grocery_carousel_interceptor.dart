import 'package:dio/dio.dart';
import 'package:dio/src/dio_error.dart';
import 'package:dio/src/options.dart';
import 'package:dio/src/response.dart';
import 'package:retrofit_tutorial/airasia/retrofit/airasia_grocery_apis.dart';
import 'package:retrofit_tutorial/common/constants.dart';
import 'package:retrofit_tutorial/common/enums.dart';
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
    var env = kEnvironmentType;

    final data = options.queryParameters;
    data['environment'] =
    env == EnvironmentType.Development ? 'dev' : 'production';
    data['locale'] = 'en-gb';
    data['asc'] = 'sequence';
    data['api_key'] = AirAsiaCarouselApis.apiKey;
    data['access_token'] = env == EnvironmentType.Development
        ? AirAsiaCarouselApis.stagingAccessToken
        : AirAsiaCarouselApis.prodAccessToken;
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

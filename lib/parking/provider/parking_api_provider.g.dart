// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_api_provider.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ParkingApiProvider implements ParkingApiProvider {
  _ParkingApiProvider(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://maf-properties-dev.apigee.net';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Token> auth(authHeader) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Token>(Options(
                method: 'POST',
                headers: <String, dynamic>{r'Authorization': authHeader},
                extra: _extra)
            .compose(
                _dio.options, '/v1/oauth/token?grant_type=client_credentials',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Token.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

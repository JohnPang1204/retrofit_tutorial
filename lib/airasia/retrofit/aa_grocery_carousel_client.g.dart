// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aa_grocery_carousel_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _AAGroceryCarouselClient implements AAGroceryCarouselClient {
  _AAGroceryCarouselClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://cdn.contentstack.io';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<GroceryCarouselResponse> getCarouselIds() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GroceryCarouselResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/v3/content_types/of_home_tags/entries',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GroceryCarouselResponse.fromJson(_result.data!);
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

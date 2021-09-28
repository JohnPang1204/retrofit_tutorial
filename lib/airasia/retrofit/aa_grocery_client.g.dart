// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aa_grocery_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _AAGroceryClient implements AAGroceryClient {
  _AAGroceryClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api-bee.stgairasia.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<GroceryTagResponse> getGroceryTags() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GroceryTagResponse>(Options(
                method: 'GET',
                headers: <String, dynamic>{
                  r'X-CLIENT-ID': '4415a5de-bb03-4cd7-b614-4b699ae83789'
                },
                extra: _extra)
            .compose(_dio.options, '/menu/v1/tags',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GroceryTagResponse.fromJson(_result.data!);
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

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
        _setStreamType<GroceryTagResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/menu/v1/tags',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GroceryTagResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<dynamic> getProductsCount(
      {required categoryTagUuid, typeId = 1, multipleCategory, alcohol}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'category_tag_uuid': categoryTagUuid,
      r'type_id': typeId,
      r'multiple_category': multipleCategory,
      r'alcohol': alcohol
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
            .compose(_dio.options, '/menu/v1/products-count',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<GroceryMenuProductsResponse> getMenuProducts(
      {required categoryTagUuid,
      typeId = 1,
      limit = 20,
      page,
      multipleCategory,
      alcohol}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'category_tag_uuid': categoryTagUuid,
      r'type_id': typeId,
      r'limit': limit,
      r'page': page,
      r'multiple_category': multipleCategory,
      r'alcohol': alcohol
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GroceryMenuProductsResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/menu/v1/products-aa',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GroceryMenuProductsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<dynamic> getProductFilters(
      {required categoryTagUuid,
      required filters,
      typeId = 1,
      multipleCategory,
      alcohol}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'category_tag_uuid': categoryTagUuid,
      r'filters': filters,
      r'type_id': typeId,
      r'multiple_category': multipleCategory,
      r'alcohol': alcohol
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
            .compose(_dio.options, '/menu/v1/products-filters',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
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

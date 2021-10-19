// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aa_grocery_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _AAGroceryClient implements AAGroceryClient {
  _AAGroceryClient(this._dio, {this.baseUrl});

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
      {categoryTagUuid,
      categoryUuid,
      typeId = 1,
      multipleCategory,
      alcohol}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'category_tag_uuid': categoryTagUuid,
      r'category_uuid': categoryUuid,
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
      {categoryTagUuid,
      categoryUuid,
      tagCarouselUuid,
      typeId = 1,
      limit = 20,
      page = 1,
      multipleCategory,
      alcohol,
      storeUuids}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'category_tag_uuid': categoryTagUuid,
      r'category_uuid': categoryUuid,
      r'tag_carousel_uuid': tagCarouselUuid,
      r'type_id': typeId,
      r'limit': limit,
      r'page': page,
      r'multiple_category': multipleCategory,
      r'alcohol': alcohol,
      r'store_uuids': storeUuids
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
  Future<GroceryProductFiltersResponse> getProductFilters(
      {categoryTagUuid,
      categoryUuid,
      required filters,
      typeId = 1,
      multipleCategory,
      alcohol}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'category_tag_uuid': categoryTagUuid,
      r'category_uuid': categoryUuid,
      r'filters': filters,
      r'type_id': typeId,
      r'multiple_category': multipleCategory,
      r'alcohol': alcohol
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GroceryProductFiltersResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/menu/v1/products-filters',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GroceryProductFiltersResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<StoreDetailsResponse> getStoreDetails(storeSlug) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<StoreDetailsResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/store/v1/store/$storeSlug',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = StoreDetailsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<StoreProductsResponse> getStoreProducts(
      {storeUuids, limit = 7, page = 1, typeId = 1, multipleCategory}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'store_uuids': storeUuids,
      r'limit': limit,
      r'page': page,
      r'type_id': typeId,
      r'multiple_category': multipleCategory
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<StoreProductsResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/menu/v1/products',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = StoreProductsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ProductDetailsResponse> getProductDetails(
      {required productSlug, storeUuid, typeId = 1}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'store_uuid': storeUuid,
      r'type_id': typeId
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ProductDetailsResponse>(Options(
                method: 'GET', headers: <String, dynamic>{}, extra: _extra)
            .compose(
                _dio.options, '/menu/v1/product-detail-by-slug/$productSlug',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ProductDetailsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SimilarProductsResponse> getSimilarProduct(
      {required productUuid, limit = 10, page = 1, typeId = 1}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'code': productUuid,
      r'limit': limit,
      r'page': page,
      r'type_id': typeId
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SimilarProductsResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/menu/v1/similar',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SimilarProductsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<dynamic> getTagsByProduct({required productUuid}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
            .compose(_dio.options, '/menu/v1/tags-by-product/$productUuid',
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

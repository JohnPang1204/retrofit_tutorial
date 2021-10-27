import 'package:dio/dio.dart';
import 'package:retrofit_tutorial/airasia/carrefour_model/grocery_categories_details.dart';
import 'package:retrofit_tutorial/airasia/carrefour_model/product.dart';
import 'package:retrofit_tutorial/airasia/carrefour_model/product_detail.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_carousel_id.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_menu_products_response.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_product_details.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_product_filters.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_similar_products.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_store_details.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_store_products.dart';
import 'package:retrofit_tutorial/airasia/interceptor/aa_grocery_carousel_interceptor.dart';
import 'package:retrofit_tutorial/airasia/interceptor/aa_grocery_interceptor.dart';
import 'package:retrofit_tutorial/airasia/mapper/categories_mapper.dart';
import 'package:retrofit_tutorial/airasia/retrofit/aa_grocery_carousel_client.dart';
import 'package:retrofit_tutorial/airasia/retrofit/aa_grocery_client.dart';
import 'package:retrofit_tutorial/airasia/retrofit/airasia_error.dart';
import 'package:retrofit_tutorial/airasia/retrofit/airasia_grocery_apis.dart';
import 'package:retrofit_tutorial/common/constants.dart';
import 'package:retrofit_tutorial/common/enums.dart';
import 'package:retrofit_tutorial/common/response_wrapper.dart';

import '../entities/grocery_tag_responses.dart';
import 'aa_grocery_api_service_manager.dart';

class AirAsiaGroceryRepository {
  late AAGroceryClient _groceryClient;
  late AAGroceryCarouselClient _groceryCarouselClient;

  AirAsiaGroceryRepository() {
    final groceryDio = AirAsiaGroceryApiServiceManager.instance.getDioClient();
    AirAsiaGroceryApiServiceManager.instance
        .plugInterceptor(AirAsiaGroceryInterceptor());
    //TODO dont copy this part
    var env = kEnvironmentType;
    _groceryClient = AAGroceryClient(groceryDio,
        baseUrl:
        '${env == EnvironmentType.Development ? AirAsiaGroceryApis.kStagingBaseUrl : AirAsiaGroceryApis.kProductionBaseUrl}');

    final carouselDio = Dio();
    carouselDio.interceptors.add(AirAsiaGroceryCarouselInterceptor());
    _groceryCarouselClient = AAGroceryCarouselClient(carouselDio);
  }


  Future<ResponseWrapper<List<GroceryCategoriesDetails>>>
  getCategoriesList() async {
    try {
      final response = await _groceryClient.getGroceryTags();
      var categories = mapGroceryTagResponseToEntity(response);
      return ResponseWrapper()..setData(categories);
    } on Exception catch (err) {
      return ResponseWrapper()..setException(AirAsiaError(err));
    }
  }

  Future<ResponseWrapper<int>> getProductsCount(
      {String? categoryId,
        String? categoryTagUuid,
        List<String>? stores,
        List<String>? keywords,
        String? minPrice,
        String? maxPrice}) async {
    try {
      final response = await _groceryClient.getProductsCount(
        categoryUuid: categoryId,
        categoryTagUuid: categoryTagUuid,
        storeUuids: _storeListToString(stores),
        key: _keywordListToString(keywords),
        minPrice: minPrice,
        maxPrice: maxPrice,
      );
      var productCount = response['data'] as int;
      return ResponseWrapper()..setData(productCount);
    } on Exception catch (err) {
      return ResponseWrapper()..setException(AirAsiaError(err));
    }
  }

  Future<ResponseWrapper<List<AAGroceryProducts>?>> getMenuProducts({
    String? categoryId,
    String? categoryTagUuid,
    String? tagCarouselUuid,
    int? page,
    String? storeId,
  }) async {
    try {
      final response = await _groceryClient.getMenuProducts(
          categoryUuid: categoryId,
          page: page,
          storeUuids: storeId,
          categoryTagUuid: categoryTagUuid,
          tagCarouselUuid: tagCarouselUuid);
      return ResponseWrapper()..setData(response.data);
    } on Exception catch (err) {
      return ResponseWrapper()..setException(AirAsiaError(err));
    }
  }

  Future<ResponseWrapper<List<ProductFiltersData>?>> getProductFilters(
      {String? categoryId,
        String? categoryTagUuid,
        List<String>? keywords}) async {
    try {
      var filters = ['store_uuids', 'brand_uuids'];
      var joinedFilters = filters.join(',');

      final response = await _groceryClient.getProductFilters(
          categoryTagUuid: categoryTagUuid,
          categoryUuid: categoryId,
          filters: joinedFilters,
          key: _keywordListToString(keywords));
      return ResponseWrapper()..setData(response.data);
    } on Exception catch (err) {
      return ResponseWrapper()..setException(AirAsiaError(err));
    }
  }

  Future<ResponseWrapper<List<CarouselEntries?>>> getCarouselIds() async {
    try {
      final response = await _groceryCarouselClient.getCarouselIds();
      return ResponseWrapper()..setData(response.entries!);
    } on Exception catch (err) {
      return ResponseWrapper()..setException(AirAsiaError(err));
    }
  }

  Future<ResponseWrapper<StoreDetails?>> getStoreDetails(
      {required String storeSlug}) async {
    try {
      final response = await _groceryClient.getStoreDetails(storeSlug);
      return ResponseWrapper()..setData(response.data);
    } on Exception catch (err) {
      return ResponseWrapper()..setException(AirAsiaError(err));
    }
  }

  Future<ResponseWrapper<List<GroceryProduct>?>> getStoreProducts(
      {required String storeUuids}) async {
    try {
      final response =
      await _groceryClient.getStoreProducts(storeUuids: storeUuids);
      var mappedData = mapStoreProductsToEntity(response.data);
      return ResponseWrapper()..setData(mappedData);
    } on Exception catch (err) {
      return ResponseWrapper()..setException(AirAsiaError(err));
    }
  }

  Future<ResponseWrapper<GroceryProductFullDetail?>> getProductDetails(
      {required String productSlug, String? storeUuids}) async {
    try {
      final response = await _groceryClient.getProductDetails(
          productSlug: productSlug, storeUuid: storeUuids);
      var mappedData = mapProductDetailsToEntity(response.data);
      return ResponseWrapper()..setData(mappedData);
    } on Exception catch (err) {
      return ResponseWrapper()..setException(AirAsiaError(err));
    }
  }

  Future<ResponseWrapper<List<GroceryProduct>>> getSimilarProducts(
      {required String productUuid}) async {
    try {
      final response =
      await _groceryClient.getSimilarProduct(productUuid: productUuid);
      var mappedData = mapSimilarProductsToEntity(response.data);
      return ResponseWrapper()..setData(mappedData);
    } on Exception catch (err) {
      return ResponseWrapper()..setException(AirAsiaError(err));
    }
  }

  Future<ResponseWrapper<dynamic>> getProductTags(
      {required String productUuid}) async {
    try {
      final response =
      await _groceryClient.getTagsByProduct(productUuid: productUuid);
      return ResponseWrapper()..setData(response);
    } on Exception catch (err) {
      return ResponseWrapper()..setException(AirAsiaError(err));
    }
  }

  Future<ResponseWrapper<List<AAGroceryProducts>?>> searchProduct({
    required List<String> keywords,
    List<String>? stores,
    String? minPrice,
    String? maxPrice,
    int? page,
    String? sortBy,
    int? sortDirection,
  }) async {
    try {
      final response = await _groceryClient.searchProduct(
          key: _keywordListToString(keywords)!,
          storeUuids: _storeListToString(stores),
          minPrice: minPrice,
          maxPrice: maxPrice,
          page: page,
          sortBy: sortBy,
          sortDirection: sortDirection);
      return ResponseWrapper()..setData(response.data);
    } on Exception catch (err) {
      return ResponseWrapper()..setException(AirAsiaError(err));
    }
  }

  String? _keywordListToString(List<String>? keywords) {
    if (keywords == null || keywords.isEmpty) return null;

    return keywords!.join('+');
  }

  String? _storeListToString(List<String>? stores) {
    if (stores == null || stores.isEmpty) return null;

    return stores!.join(',');
  }
}


import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_menu_products_response.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_product_details.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_product_filters.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_similar_products.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_store_details.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_store_products.dart';

import 'airasia_grocery_apis.dart';
import '../entities/grocery_tag_responses.dart';

part 'aa_grocery_client.g.dart';

@RestApi(baseUrl: '')
abstract class AAGroceryClient {
  factory AAGroceryClient(Dio dio, {String? baseUrl}) = _AAGroceryClient;

  @GET('${AirAsiaGroceryApis.getTags}')
  Future<GroceryTagResponse> getGroceryTags();

  @GET("${AirAsiaGroceryApis.getProductsCount}")
  Future<dynamic> getProductsCount({
    @Query('category_tag_uuid') String? categoryTagUuid,
    @Query('category_uuid') String? categoryUuid,
    @Query('type_id') int typeId = 1,
    @Query('multiple_category') int? multipleCategory,
    @Query('alcohol') int? alcohol,
    @Query('store_uuids') String? storeUuids,
    @Query('key') String? key,
    @Query('min_price') String? minPrice,
    @Query('max_price') String? maxPrice,
  });

  @GET("${AirAsiaGroceryApis.getProduct}")
  Future<GroceryMenuProductsResponse> getMenuProducts({
    @Query('category_tag_uuid') String? categoryTagUuid,
    @Query('category_uuid') String? categoryUuid,
    @Query('tag_carousel_uuid') String? tagCarouselUuid,
    @Query('type_id') int typeId = 1,
    @Query('limit') int limit = 20,
    @Query('page') int? page = 1,
    @Query('multiple_category') int? multipleCategory,
    @Query('alcohol') int? alcohol,
    @Query('store_uuids') String? storeUuids,
  });

  @GET("${AirAsiaGroceryApis.getProductFilters}")
  Future<GroceryProductFiltersResponse> getProductFilters({
    @Query('category_tag_uuid')  String? categoryTagUuid,
    @Query('category_uuid') String? categoryUuid,
    @Query('filters') required String filters,
    @Query('type_id') int typeId = 1,
    @Query('multiple_category') int? multipleCategory,
    @Query('alcohol') int? alcohol,
    @Query('key') String? key,
  });


  @GET("${AirAsiaGroceryApis.getStoreDetails}")
  Future<StoreDetailsResponse> getStoreDetails(
      @Path() String storeSlug,
      );

  @GET("${AirAsiaGroceryApis.getStoreProducts}")
  Future<StoreProductsResponse> getStoreProducts({
    @Query('store_uuids') String? storeUuids,
    @Query('limit') int limit = 7,
    @Query('page') int? page = 1,
    @Query('type_id') int typeId = 1,
    @Query('multiple_category') int? multipleCategory,
  });

  @GET("${AirAsiaGroceryApis.getProductDetails}")
  Future<ProductDetailsResponse> getProductDetails({
    @Path() required String productSlug,
    @Query('store_uuid') String? storeUuid,
    @Query('type_id') int typeId = 1,
  });


  @GET("${AirAsiaGroceryApis.getSimilarProducts}")
  Future<SimilarProductsResponse> getSimilarProduct({
    @Query('code') required String productUuid,
    @Query('limit') int limit = 10,
    @Query('page') int? page = 1,
    @Query('type_id') int typeId = 1,
  });

  //TODO Confirm the use of it
  @GET("${AirAsiaGroceryApis.getTagsByProduct}")
  Future<dynamic> getTagsByProduct({
    @Path() required String productUuid,
  });

  @GET("${AirAsiaGroceryApis.searchProduct}")
  Future<GroceryMenuProductsResponse> searchProduct({
    @Query('key') required String key,
    @Query('limit') int limit = 20,
    @Query('page') int? page = 1,
    @Query('type_id') int typeId = 1,
    @Query('multiple_category') int? multipleCategory,
    @Query('alcohol') int? alcohol,
    @Query('store_uuids') String? storeUuids,
    @Query('min_price') String? minPrice,
    @Query('max_price') String? maxPrice,
    @Query('sort_by') String? sortBy,
    @Query('sort_dir') int? sortDirection,
  });

  @GET("${AirAsiaGroceryApis.recommendation}")
  Future<GroceryMenuProductsResponse> getRecommendation({
    @Query('code') required int code,
    @Query('limit') int limit = 10,
    @Query('page') int? page = 1,
    @Query('type_id') int typeId = 1,
  });
}
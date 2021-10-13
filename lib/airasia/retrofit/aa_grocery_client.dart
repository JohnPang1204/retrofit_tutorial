import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_menu_products_response.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_product_filters.dart';

import 'airasia_grocery_apis.dart';
import '../entities/grocery_tag_responses.dart';

part 'aa_grocery_client.g.dart';

@RestApi(baseUrl: '${AirAsiaGroceryApis.kProductionBaseUrl}')
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
  });

  @GET("${AirAsiaGroceryApis.getMenuProduct}")
  Future<GroceryMenuProductsResponse> getMenuProducts({
    @Query('category_tag_uuid') String? categoryTagUuid,
    @Query('category_uuid') String? categoryUuid,
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
  });
}

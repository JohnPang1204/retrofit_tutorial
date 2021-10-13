import 'package:dio/dio.dart';
import 'package:retrofit_tutorial/airasia/carrefour_model/grocery_categories_details.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_menu_products_response.dart';
import 'package:retrofit_tutorial/airasia/interceptor/aa_grocery_carousel_interceptor.dart';
import 'package:retrofit_tutorial/airasia/interceptor/aa_grocery_interceptor.dart';
import 'package:retrofit_tutorial/airasia/mapper/categories_mapper.dart';
import 'package:retrofit_tutorial/airasia/retrofit/aa_grocery_carousel_client.dart';
import 'package:retrofit_tutorial/airasia/retrofit/aa_grocery_client.dart';
import 'package:retrofit_tutorial/airasia/retrofit/airasia_error.dart';
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
    _groceryClient = AAGroceryClient(groceryDio);

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

  Future<ResponseWrapper<int>> getProductsCount({required categoryId}) async {
    try {
      final response =
          await _groceryClient.getProductsCount(categoryTagUuid: categoryId);
      var productCount = response['data'] as int;
      return ResponseWrapper()..setData(productCount);
    } on Exception catch (err) {
      return ResponseWrapper()..setException(AirAsiaError(err));
    }
  }

  Future<ResponseWrapper<List<GroceryMenuProducts>?>> getMenuProducts(
      {required String categoryId, int? page}) async {
    try {
      final response = await _groceryClient.getMenuProducts(
          categoryTagUuid: categoryId, page: page);
      return ResponseWrapper()..setData(response.data);
    } on Exception catch (err) {
      return ResponseWrapper()..setException(AirAsiaError(err));
    }
  }

  Future<ResponseWrapper<dynamic>> getProductFilters(
      {required String categoryId}) async {
    try {
      var filters = ['store_uuids', 'brand_uuids'];
      var joinedFilters = filters.join(',');

      final response = await _groceryClient.getProductFilters(
          categoryTagUuid: categoryId, filters: joinedFilters);
      return ResponseWrapper()..setData(response.data);
    } on Exception catch (err) {
      return ResponseWrapper()..setException(AirAsiaError(err));
    }
  }

  Future<ResponseWrapper<List<String?>>> getCarouselIds() async {
    try {
      final response = await _groceryCarouselClient.getCarouselIds();
      var carouselIds = response.entries!.map((e) => e.slug).toList();
      return ResponseWrapper()..setData(carouselIds);
    } on Exception catch (err) {
      return ResponseWrapper()..setException(AirAsiaError(err));
    }
  }
}

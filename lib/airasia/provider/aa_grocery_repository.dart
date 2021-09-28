import 'package:dio/dio.dart';
import 'package:retrofit_tutorial/airasia/interceptor/aa_grocery_interceptor.dart';
import 'package:retrofit_tutorial/airasia/retrofit/aa_grocery_client.dart';

import '../entities/grocery_tag_responses.dart';
import 'aa_grocery_api_service_manager.dart';

class AirAsiaGroceryRepository {
  late AAGroceryClient _groceryClient;

  AirAsiaGroceryRepository() {
    final _dio = AirAsiaGroceryApiServiceManager.instance.getDioClient();
    AirAsiaGroceryApiServiceManager.instance.plugInterceptor(AirAsiaGroceryInterceptor());
    _groceryClient = AAGroceryClient(_dio);
  }

  Future<GroceryTagResponse> getCategoriesList() async {
    try {
      //TODO response wrapper
      var response = await _groceryClient.getGroceryTags();
      return response;
    } catch (e) {
      throw e;
    }
  }
}

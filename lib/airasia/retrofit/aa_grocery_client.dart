import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';

import 'airasia_grocery_apis.dart';
import '../entities/grocery_tag_responses.dart';


part 'aa_grocery_client.g.dart';

@RestApi(baseUrl: '${AirAsiaGroceryApis.kStagingBaseUrl}')
abstract class AAGroceryClient {
  factory AAGroceryClient(Dio dio, {String? baseUrl}) = _AAGroceryClient;

  @GET('${AirAsiaGroceryApis.getTags}')
  @Headers(<String, dynamic>{
    'X-CLIENT-ID': '4415a5de-bb03-4cd7-b614-4b699ae83789',
  })
  Future<GroceryTagResponse> getGroceryTags();
}

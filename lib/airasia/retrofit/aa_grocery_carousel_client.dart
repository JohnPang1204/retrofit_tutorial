import 'package:dio/dio.dart' hide Headers;
import 'package:flutter/cupertino.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_carousel_id.dart';


import 'airasia_grocery_apis.dart';
import '../entities/grocery_tag_responses.dart';

part 'aa_grocery_carousel_client.g.dart';

@RestApi(baseUrl: '${AirAsiaCarouselApis.kStagingBaseUrl}')
abstract class AAGroceryCarouselClient {
  factory AAGroceryCarouselClient(Dio dio, {String? baseUrl}) = _AAGroceryCarouselClient;

  @GET("${AirAsiaCarouselApis.getCarouselIds}")
  Future<GroceryCarouselResponse> getCarouselIds();
}

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit_tutorial/network/login_response.dart';
import 'package:retrofit_tutorial/parking/entities/token.dart';

part 'parking_api_provider.g.dart';

@RestApi(baseUrl: 'https://maf-properties-dev.apigee.net')
abstract class ParkingApiProvider {
  factory ParkingApiProvider(Dio dio, {String? baseUrl}) {
    dio.options = BaseOptions(
        receiveTimeout: 30000,
        connectTimeout: 30000,
        contentType: 'application/json');

    return _ParkingApiProvider(dio,baseUrl:baseUrl);
  }

  @POST('/v1/oauth/token?grant_type=client_credentials')
  Future<Token> auth(@Header("Authorization") String authHeader);
}

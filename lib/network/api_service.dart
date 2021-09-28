import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit_tutorial/network/login_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'http://124.130.55.88/API')
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) {
    dio.options = BaseOptions(
        receiveTimeout: 30000,
        connectTimeout: 30000,
        contentType: 'application/json',
        headers: {
          'Authorization': 'Basic ZGlzYXBpdXNlcjpkaXMjMTIz',
          'X-ApiKey': 'ZGslzIzEyMw==',
          'Content-Type': 'application/json'
        });

    return _ApiService(dio,baseUrl:baseUrl);
  }

  @POST('/ApiLogin')
  Future<LoginResponse> login(@Body() Map<String, dynamic>body);
}

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:retrofit_tutorial/parking/entities/token.dart';
import 'package:retrofit_tutorial/parking/provider/parking_api_provider.dart';

class ParkingRepository {
  Future<Token> auth() async {
    try {
      ParkingApiProvider provider = ParkingApiProvider(Dio());

      var authHeader =
          'Basic ${base64Encode(utf8.encode('jBJbD0LGiQBNWsrPiATG3RuSV7tSYI0C:txQdb1WsDc2yoYAi'))}';

      return await provider.auth(authHeader);
    } catch (e) {
      throw e;
    }
  }
}

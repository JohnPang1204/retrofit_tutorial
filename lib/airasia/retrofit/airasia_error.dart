import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:retrofit_tutorial/common/error_model.dart';
import 'package:retrofit_tutorial/common/exception.dart';

class AirAsiaError extends ExceptionHandler {
  ErrorModel? _errorModel;

  AirAsiaError(Exception e) : super(e) {
    _errorModel ??= super.getErrorModel();
  }

  @override
  ErrorModel? getErrorModel() => _errorModel;

  @override
  void handleDioResponseError(Response? response) {

  }
}

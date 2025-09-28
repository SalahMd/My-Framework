import 'package:dio/dio.dart';
import 'package:new_project/core/classs/request_state.dart';

RequestState handle(dynamic error) {
  if (error is DioException) {
    return handleError(error);
  } else {
    return RequestState.defaultError;
  }
}

RequestState handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.badResponse:
      return RequestState.badResponse;
    case DioExceptionType.connectionError:
      return RequestState.noInternet;
    default:
      return RequestState.defaultError;
  }
}

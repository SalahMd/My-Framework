import 'package:dio/dio.dart';

class DioClass {
  final String? token;
  final BaseOptions opts;
  late Dio dio = Dio(opts);
  DioClass({this.token})
      : opts = BaseOptions(
            responseType: ResponseType.json,
            connectTimeout: const Duration(seconds: 15),
            receiveTimeout: const Duration(seconds: 15),
            headers: {
              "Accept": "application/json",
              'Authorization': "Bearer $token"
            });

  Future<Map<String, dynamic>> get(String url,
      {Map<String, dynamic>? paramss}) async {
    try {
      Response response = await dio.get(url, queryParameters: paramss);
      return response.data;
    } on DioException catch (_) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> post(String url, dynamic data) async {
    try {
      Response response = await dio.post(url, data: data);
      return response.data;
    } on DioException catch (_) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> put(String url, dynamic data) async {
    try {
      Response response = await dio.put(url, data: data);
      return response.data;
    } on DioException catch (_) {
      rethrow;
    }
  }
}

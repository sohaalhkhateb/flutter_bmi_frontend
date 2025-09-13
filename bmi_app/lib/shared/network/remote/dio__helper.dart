import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static void init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://api.fda.gov/',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response?> getData({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      Response response = await dio!.get(endpoint,
          queryParameters: queryParameters);
      return response;
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}
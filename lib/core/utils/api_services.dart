import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiServices {
  final baseUrl = "https://todo.iraqsapp.com";
  final Dio dio;
  ApiServices(this.dio);
  Future<Map<String, dynamic>> post({required String endpoint , data}) async {
    dio.interceptors.add(PrettyDioLogger());
    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));
    var response = await dio.post('$baseUrl$endpoint');
    return response.data;
  }
}

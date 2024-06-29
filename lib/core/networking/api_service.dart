import 'package:dio/dio.dart';

import 'network_config.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio) {
    _dio.options.baseUrl = NetworkConfig.baseUrl;
    _dio.options.headers = NetworkConfig.headers;
  }

  Future<Response> get(String path,
      {Map<String, dynamic>? queryParameters}) async {
    return await _dio.get(path, queryParameters: queryParameters);
  }
}

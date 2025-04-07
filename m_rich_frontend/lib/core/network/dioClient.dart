import 'package:dio/dio.dart';
import 'package:mrich_frontend/core/constants/apiConstants.dart';

class DioClient {
  static final Dio _dio = Dio(BaseOptions(
    baseUrl: '${ApiConstants.baseUrl}${ApiConstants.apiPrefix}',
    connectTimeout: ApiConstants.timeout,
    receiveTimeout: ApiConstants.timeout,
    headers: {
      'Content-Type': 'application/json',
    },
  ));

  static Dio get instance => _dio;
}

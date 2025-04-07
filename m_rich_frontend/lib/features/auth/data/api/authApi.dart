import 'package:dio/dio.dart';
import 'package:mrich_frontend/core/network/dioClient.dart';

class AuthApi {
  final Dio _dio = DioClient.instance;

  Future<Response> login(Map<String, dynamic> data) {
    return _dio.post('/auth/login', data: data);
  }

  Future<Response> register(Map<String, dynamic> data) {
    return _dio.post('/user/register', data: data);
  }

  Future<Response> refresh(String refreshToken) {
    return _dio.post('/auth/refresh', data: {'refreshToken': refreshToken});
  }
}

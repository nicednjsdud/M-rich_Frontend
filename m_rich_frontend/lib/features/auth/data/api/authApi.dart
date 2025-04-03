import 'package:dio/dio.dart';
import 'package:mrich_frontend/features/auth/data/models/loginRequest.dart';
import 'package:mrich_frontend/features/auth/data/models/tokenResponse.dart';

class AuthApi {
  final Dio _dio;

  AuthApi(this._dio);

  Future<TokenResponse> login(LoginRequest request) async {
    final response = await _dio.post(
      '/api/v1/auth/login',
      data: request.toJson(),
    );
    return TokenResponse.fromJson(response.data);
  }

  Future<TokenResponse> refreshToken(String refreshToken) async {
    final response = await _dio.post(
      '/api/v1/auth/refresh',
      data: {'refreshToken': refreshToken},
    );
    return TokenResponse.fromJson(response.data);
  }
}

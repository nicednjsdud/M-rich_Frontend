import 'package:mrich_frontend/features/auth/data/models/loginRequest.dart';
import 'package:mrich_frontend/features/auth/data/models/tokenResponse.dart';

abstract class AuthRepository {
  /// 로그인 시도
  Future<TokenResponse> login(LoginRequest request);

  /// 토큰 재발급
  Future<TokenResponse> refreshToken(String refreshToken);
}

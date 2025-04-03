import 'package:mrich_frontend/features/auth/authApi.dart';
import 'package:mrich_frontend/features/auth/data/models/loginRequest.dart';
import 'package:mrich_frontend/features/auth/data/models/tokenResponse.dart';
import 'package:mrich_frontend/features/auth/domain/repositories/authRepository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApi _api;

  AuthRepositoryImpl(this._api);

  @override
  Future<TokenResponse> login(LoginRequest request) {
    return _api.login(request);
  }

  @override
  Future<TokenResponse> refreshToken(String refreshToken) {
    return _api.refreshToken(refreshToken);
  }
}

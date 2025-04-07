import 'package:mrich_frontend/features/auth/data/api/authApi.dart';
import 'package:mrich_frontend/features/auth/domain/repositories/authRepository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApi _api = AuthApi();

  @override
  Future<void> login(String username, String password) async {
    final response = await _api.login({
      'username': username,
      'password': password,
    });
  }

  @override
  Future<void> register(String username, String password) async {
    // api 주소 확인
    final response = await _api.register({
      'username': username,
      'password': password,
    });

    if (response.statusCode != 201) {
      throw Exception("회원가입 실패: ${response.data}");
    }
  }
}

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final String accessToken;
  final String refreshToken;

  AuthSuccess({required this.accessToken, required this.refreshToken});
}

class AuthFailure extends AuthState {
  final String error;

  AuthFailure({required this.error});
}

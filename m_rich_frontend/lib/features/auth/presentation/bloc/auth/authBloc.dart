import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mrich_frontend/features/auth/data/models/loginRequest.dart';
import '../../../domain/repositories/authRepository.dart';
import 'authEvent.dart';
import 'authState.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository repository;

  AuthBloc(this.repository) : super(AuthInitial()) {
    on<LoginRequested>((event, emit) async {
      emit(AuthLoading());

      try {
        final token = await repository.login(
          LoginRequest(username: event.username, password: event.password),
        );
        emit(AuthSuccess(
          accessToken: token.accessToken,
          refreshToken: token.refreshToken,
        ));
      } catch (e) {
        emit(AuthFailure(error: e.toString()));
      }
    });
  }
}

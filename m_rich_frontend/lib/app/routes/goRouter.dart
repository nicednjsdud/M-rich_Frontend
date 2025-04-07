import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mrich_frontend/features/auth/presentation/bloc/auth/authBloc.dart';
import 'package:mrich_frontend/features/auth/presentation/blocs/authState.dart';
import 'package:mrich_frontend/features/auth/presentation/screens/home/homeScreen.dart';
import 'package:mrich_frontend/features/auth/presentation/screens/login/loginScreen.dart';

GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        final authState = context.watch<AuthBloc>().state;

        if (authState is AuthSuccess) {
          return const HomeScreen(); // ✅ 로그인 성공 시
        } else {
          return const LoginScreen(); // 🔒 로그인 필요
        }
      },
    ),
    // 회원가입 등 추가 경로 필요 시 여기에 정의
  ],
);

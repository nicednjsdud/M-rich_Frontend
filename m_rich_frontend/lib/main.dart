import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mrich_frontend/features/auth/data/repositories/authRepositoryImpl.dart';
import 'package:mrich_frontend/features/auth/presentation/blocs/authBloc.dart';
import 'package:mrich_frontend/features/auth/presentation/screens/login/loginScreen.dart';
import 'package:mrich_frontend/features/auth/presentation/screens/register/registerScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authRepository = AuthRepositoryImpl();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mRich',
      routes: {
        '/': (context) => BlocProvider(
              create: (_) => AuthBloc(authRepository),
              child: const LoginScreen(),
            ),
        '/register': (context) => BlocProvider.value(
              value: AuthBloc(authRepository),
              child: const RegisterScreen(),
            ),
        '/home': (context) => const Placeholder(), // 추후 홈 화면 연결
      },
    );
  }
}

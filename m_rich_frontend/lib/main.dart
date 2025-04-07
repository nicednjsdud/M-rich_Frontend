import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mrich_frontend/features/auth/data/api/authApi.dart';
import 'package:mrich_frontend/features/auth/domain/repositories/authRepository.dart';
import 'package:mrich_frontend/features/auth/presentation/blocs/authBloc.dart';
import 'package:mrich_frontend/features/auth/presentation/screens/loginScreen.dart';
import 'features/auth/data/repositories/authRepositoryImpl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final dio = Dio();
    final authApi = AuthApi(dio);
    final AuthRepository repository = AuthRepositoryImpl(authApi);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AuthBloc(repository),
        ),
      ],
      child: MaterialApp(
        title: 'mRich',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          useMaterial3: true,
        ),
        home: LoginScreen(),
      ),
    );
  }
}

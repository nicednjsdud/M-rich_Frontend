import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mrich_frontend/presentation/screens/login/loginScreen.dart';
import 'package:mrich_frontend/presentation/screens/home/homeScreen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);

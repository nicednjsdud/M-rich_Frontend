import 'package:go_router/go_router.dart';
import 'package:mrich_frontend/features/auth/presentation/screens/loginScreen.dart';
import 'package:mrich_frontend/features/auth/presentation/screens/home/homeScreen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);

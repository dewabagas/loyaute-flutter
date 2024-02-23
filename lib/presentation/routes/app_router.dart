import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loyaute/presentation/auths/login/page_login.dart';
import 'package:loyaute/presentation/auths/register/page_register.dart';
import 'package:loyaute/presentation/core/pages/page_onboarding.dart';
import 'package:loyaute/presentation/core/pages/page_splash.dart';
import 'package:loyaute/presentation/routes/app_route_paths.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    initialLocation: RoutePaths.splash,
    routerNeglect: true,
    // debugLogDiagnostics: true,
    routes: [
      // CORE
      GoRoute(
          path: RoutePaths.splash,
          builder: (context, state) => const PageSplash()),
      GoRoute(
          path: RoutePaths.onboarding,
          builder: (context, state) => const PageOnboarding()),

      // AUTHS
      GoRoute(
          path: RoutePaths.login,
          builder: (context, state) => const PageLogin()),
      GoRoute(
          path: RoutePaths.register,
          builder: (context, state) => const PageRegister()),
    ],
    errorBuilder: (context, state) {
      return Container();
    },
    redirect: (context, state) {},
  );
}

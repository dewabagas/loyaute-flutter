import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loyaute/presentation/core/pages/page_onboarding.dart';
import 'package:loyaute/presentation/core/pages/page_splash.dart';
import 'package:loyaute/presentation/routes/app_route_paths.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    initialLocation: RoutePaths.splash,
    routerNeglect: true,
    // debugLogDiagnostics: true,
    routes: [
      GoRoute(
          path: RoutePaths.splash,
          builder: (context, state) => const PageSplash()),
      GoRoute(
          path: RoutePaths.onboarding,
          builder: (context, state) => const PageOnboarding()),
    ],
    errorBuilder: (context, state) {
      return Container();
    },
    redirect: (context, state) {},
  );
}

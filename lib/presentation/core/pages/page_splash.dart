import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loyaute/presentation/routes/app_route_paths.dart';

class PageSplash extends StatefulWidget {
  const PageSplash({super.key});

  @override
  State<PageSplash> createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 1), () async {
        log('to onboarding');
        context.go(RoutePaths.onboarding);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    log('splash');

    return const SizedBox.shrink();
  }
}

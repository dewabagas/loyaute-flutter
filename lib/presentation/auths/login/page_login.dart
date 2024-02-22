import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loyaute/presentation/auths/components/auth_wrapper.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  @override
  Widget build(BuildContext context) {
    return AuthWrapper(
        title: 'Let’s sign You in.',
        subtitle:
            'Hey there, fabulous! Ready to kick back and explore? Just a quick sign-in away from unlocking a world of fun.',
        child: Container());
  }
}

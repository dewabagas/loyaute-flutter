import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:loyaute/presentation/auths/components/auth_wrapper.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';
import 'package:loyaute/presentation/routes/app_route_paths.dart';
import 'package:loyaute/presentation/shared/buttons/button_primary.dart';
import 'package:loyaute/presentation/shared/inputs/input_primary.dart';

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
      bottomChild: Align(
        alignment: Alignment.bottomCenter,
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          ButtonPrimary(
              title: 'Sign In',
              onPressed: () => GoRouter.of(context).push(RoutePaths.otp)),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Haven’t registered yet ? ',
                  style: TextStyles.labelLarge.copyWith(
                      color: AppColors.neutral, fontWeight: FontWeight.w400)),
              InkWell(
                onTap: () => GoRouter.of(context).push(RoutePaths.register),
                child: Text('Register',
                    style: TextStyles.labelLarge.copyWith(
                        color: AppColors.primary, fontWeight: FontWeight.w700)),
              ),
            ],
          ),
          SizedBox(height: 66.h),
        ]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InputPrimary(hintText: 'Email', hasLabel: false),
          SizedBox(height: 16.h),
          const InputPrimary(hintText: 'Password', hasLabel: false),
          SizedBox(height: 16.h),
          Row(
            children: [
              Text('Forgot Password ? ',
                  style: TextStyles.labelLarge.copyWith(
                      color: AppColors.neutral, fontWeight: FontWeight.w400)),
              Text('Reset Password',
                  style: TextStyles.labelLarge.copyWith(
                      color: AppColors.primary, fontWeight: FontWeight.w700)),
            ],
          ),
        ],
      ),
    );
  }
}

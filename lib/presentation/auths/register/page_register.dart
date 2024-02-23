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

class PageRegister extends StatefulWidget {
  const PageRegister({super.key});

  @override
  State<PageRegister> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  @override
  Widget build(BuildContext context) {
    return AuthWrapper(
      title: 'Create an account',
      subtitle: 'New around here? Awesome choice! Let\'s make it official.',
      bottomChild: Align(
        alignment: Alignment.bottomCenter,
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          ButtonPrimary(title: 'Create Account', onPressed: () {}),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account ? ',
                  style: TextStyles.labelLarge.copyWith(
                      color: AppColors.neutral, fontWeight: FontWeight.w400)),
              InkWell(
                onTap: () => GoRouter.of(context).push(RoutePaths.login),
                child: Text('Sign In',
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
          const InputPrimary(hintText: 'Name', hasLabel: false),
          SizedBox(height: 16.h),
          const InputPrimary(hintText: 'Email', hasLabel: false),
          SizedBox(height: 16.h),
          InputPrimary(
              prefixIcon: Container(
                  margin: EdgeInsets.only(left: 16.w),
                  width: screenWidth * 0.21,
                  child: Row(
                    children: [
                      Text('+62',
                          style: TextStyles.labelLarge.copyWith(
                              color: AppColors.neutral,
                              fontWeight: FontWeight.w400)),
                      SizedBox(width: 8.32.w),
                      const Icon(Icons.keyboard_arrow_down_sharp,
                          color: AppColors.neutral)
                    ],
                  )),
              hintText: 'Phone Number',
              hasLabel: false),
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

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';

class AuthWrapper extends StatelessWidget {
  final Widget child;
  final Widget bottomChild;
  final bool resizeToAvoidBottomInset;
  final Color? backgroundColor;
  final String? title;
  final String? subtitle;
  const AuthWrapper(
      {super.key,
      required this.child,
      this.resizeToAvoidBottomInset = true,
      this.backgroundColor,
      this.title,
      this.subtitle,
      required this.bottomChild});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 76.h),
                SvgPicture.asset(AppLogo.icLoyauteAlternative),
                SizedBox(height: 16.h),
                Text(title ?? 'Title',
                    style: TextStyles.headlineMedium
                        .copyWith(fontSize: 29.sp, color: AppColors.charcoal)),
                SizedBox(height: 8.h),
                Text(subtitle ?? 'Subtitle',
                    style: TextStyles.bodyMedium.copyWith(
                        color: AppColors.neutral, fontWeight: FontWeight.w400)),
                SizedBox(height: 32.h),
                child,
              ],
            ),
            bottomChild
          ],
        ),
      ),
    );
  }
}

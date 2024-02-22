import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';

class AuthWrapper extends StatefulWidget {
  final Widget child;
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
      this.subtitle});

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 76.h),
            SvgPicture.asset(AppLogo.icLoyauteAlternative),
            SizedBox(height: 16.h),
            Text(widget.title ?? 'Title',
                style: TextStyles.headlineMedium
                    .copyWith(fontSize: 29.sp, color: AppColors.charcoal)),
            SizedBox(height: 8.h),
            Text(widget.subtitle ?? 'Subtitle',
                style: TextStyles.bodyMedium.copyWith(
                    color: AppColors.neutral, fontWeight: FontWeight.w400)),
            SizedBox(height: 32.h),
            widget.child
          ],
        ),
      ),
    );
  }
}

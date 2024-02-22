import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';
import 'package:loyaute/presentation/shared/buttons/button_primary.dart';

class PageOnboarding extends StatefulWidget {
  const PageOnboarding({super.key});

  @override
  State<PageOnboarding> createState() => _PageOnboardingState();
}

class _PageOnboardingState extends State<PageOnboarding>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
    initializeAnimation();
  }

  initializeAnimation() {
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation =
        Tween<double>(begin: -10, end: 10).animate(_animationController);
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 94.8.h),
                SvgPicture.asset(AppLogo.icLoyauteFull),
              ],
            ),
            Column(
              children: [
                AnimatedBuilder(
                  animation: _animationController,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: Offset(0, _animation.value),
                      child: child,
                    );
                  },
                  child: Image.asset(AppIllustrations.illOnboarding),
                ),
                SizedBox(height: 24.h),
                Text('Welcome to Loyauté!',
                    style: TextStyles.headlineSmall
                        .copyWith(color: AppColors.white)),
                SizedBox(height: 8.h),
                Text('Swipe, shop, and smile!',
                    style: TextStyles.labelLarge.copyWith(
                        color: AppColors.white, fontWeight: FontWeight.w400)),
                Text('Your loyalty journey starts here.',
                    style: TextStyles.labelLarge.copyWith(
                        color: AppColors.white, fontWeight: FontWeight.w400)),
              ],
            ),
            Column(
              children: [
                ButtonPrimary(
                  title: 'Sign in',
                  color: AppColors.white,
                  height: 56.h,
                  margin: EdgeInsets.symmetric(horizontal: 24.w),
                  textStyle: TextStyles.titleMedium.copyWith(
                      color: AppColors.primary, fontWeight: FontWeight.w500),
                  onPressed: () {},
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Haven’t registered yet ? ',
                        style: TextStyles.labelLarge.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.w400)),
                    Text('Sign Up',
                        style: TextStyles.labelLarge.copyWith(
                            color: AppColors.darkBlue,
                            fontWeight: FontWeight.w700)),
                  ],
                ),
                SizedBox(height: 60.5.h),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

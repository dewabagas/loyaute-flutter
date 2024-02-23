import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';
import 'package:loyaute/presentation/routes/app_route_paths.dart';
import 'package:loyaute/presentation/shared/buttons/button_primary.dart';
import 'package:pinput/pinput.dart';

class PageOtp extends StatefulWidget {
  const PageOtp({super.key});

  @override
  State<PageOtp> createState() => _PageOtpState();
}

class _PageOtpState extends State<PageOtp> {
  TextEditingController pinController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    pinController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 69.75.w,
      height: 56.h,
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      textStyle: TextStyles.bodyLarge
          .copyWith(color: AppColors.neutralDark, fontSize: 20.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.neutral),
        color: AppColors.white,
      ),
    );

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppLogo.icLoyauteFullAlternative),
            SizedBox(height: 32.h),
            Text('Enter OTP Verification',
                style: TextStyles.headlineSmall
                    .copyWith(color: AppColors.neutralDark)),
            SizedBox(height: 8.h),
            RichText(
                text: TextSpan(
              style: TextStyles.bodyMedium.copyWith(
                  color: AppColors.neutral, fontWeight: FontWeight.w400),
              children: const <TextSpan>[
                TextSpan(
                  text: 'We’ve sent an OTP code to ',
                ),
                TextSpan(
                    text: '+62 823403122',
                    style: TextStyle(color: AppColors.neutralDark)),
              ],
            )),
            SizedBox(height: 16.h),
            Center(
              child: Pinput(
                autofocus: false,
                controller: pinController,
                androidSmsAutofillMethod:
                    AndroidSmsAutofillMethod.smsUserConsentApi,
                listenForMultipleSmsOnAndroid: true,
                showCursor: true,
                hapticFeedbackType: HapticFeedbackType.lightImpact,
                defaultPinTheme: defaultPinTheme,
                errorPinTheme: defaultPinTheme.copyBorderWith(
                  border: Border.all(color: AppColors.red),
                ),
                onCompleted: (pin) {},
              ),
            ),
            SizedBox(height: 32.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Didn’t  receive code ? ',
                    style: TextStyles.labelLarge.copyWith(
                        color: AppColors.neutral, fontWeight: FontWeight.w400)),
                InkWell(
                  onTap: () => GoRouter.of(context).push(RoutePaths.register),
                  child: Text('Resend Code',
                      style: TextStyles.labelLarge.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w700)),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            ButtonPrimary(
                title: 'Submit',
                onPressed: () => GoRouter.of(context).push(RoutePaths.register))
          ],
        ),
      ),
    );
  }
}

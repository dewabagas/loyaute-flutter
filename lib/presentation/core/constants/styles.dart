import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';

double screenWidth =
    MediaQueryData.fromView(WidgetsBinding.instance.window).size.width;
double screenHeight =
    MediaQueryData.fromView(WidgetsBinding.instance.window).size.height;

class TextStyles {
  static const TextStyle poppins =
      TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500);

  static TextStyle get displayLarge => poppins.copyWith(
      color: AppColors.primary, fontSize: 57.sp, fontWeight: FontWeight.w700);
  static TextStyle get displayMedium => poppins.copyWith(
      color: AppColors.primary, fontSize: 45.sp, fontWeight: FontWeight.w700);
  static TextStyle get displaySmall => poppins.copyWith(
      color: AppColors.primary, fontSize: 44.sp, fontWeight: FontWeight.w700);

  static TextStyle get headlineLarge => poppins.copyWith(
      color: AppColors.primary, fontSize: 32.sp, fontWeight: FontWeight.w700);
  static TextStyle get headlineMedium => poppins.copyWith(
      color: AppColors.primary, fontSize: 28.sp, fontWeight: FontWeight.w700);
  static TextStyle get headlineSmall => poppins.copyWith(
      color: AppColors.primary, fontSize: 24.sp, fontWeight: FontWeight.w700);

  static TextStyle get titleLarge => poppins.copyWith(
      color: AppColors.primary, fontSize: 22.sp, fontWeight: FontWeight.w600);
  static TextStyle get titleMedium => poppins.copyWith(
        color: AppColors.primary,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmall => poppins.copyWith(
        color: AppColors.primary,
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get labelLarge => poppins.copyWith(
        color: AppColors.charcoal,
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelMedium => poppins.copyWith(
        color: AppColors.charcoal,
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelSmall => poppins.copyWith(
        color: AppColors.charcoal,
        fontSize: 10.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get bodyLarge => poppins.copyWith(
      color: AppColors.charcoal, fontSize: 16.sp, fontWeight: FontWeight.w500);
  static TextStyle get bodyMedium => poppins.copyWith(
      color: AppColors.charcoal, fontSize: 14.sp, fontWeight: FontWeight.w500);
  static TextStyle get bodySmall => poppins.copyWith(
      color: AppColors.charcoal, fontSize: 12.sp, fontWeight: FontWeight.w500);

  static TextStyle get bodyVerySmall => poppins.copyWith(
      color: AppColors.charcoal, fontSize: 10.sp, fontWeight: FontWeight.w500);
}

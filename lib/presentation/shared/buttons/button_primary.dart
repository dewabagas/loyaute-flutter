import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';

class ButtonPrimary extends StatelessWidget {
  final String? title;
  final Function? onPressed;
  final bool enabled;
  final TextStyle? textStyle;
  final double? height;
  final double? width;
  final bool isLoading;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color? color;
  final bool isOutlined;

  const ButtonPrimary(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.textStyle,
      this.enabled = true,
      this.height,
      this.width,
      this.isLoading = false,
      this.prefixIcon,
      this.padding,
      this.margin,
      this.color,
      this.suffixIcon,
      this.isOutlined = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    BoxDecoration decoration;
    if (isOutlined) {
      decoration = BoxDecoration(
        border: Border.all(
            color: enabled ? color ?? AppColors.primary : AppColors.grey),
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      );
    } else {
      decoration = BoxDecoration(
        color: color ?? AppColors.primary,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      );
    }
    if (!enabled) {
      decoration = BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(10.r),
      );
    }
    Color textColor = isOutlined
        ? (color ?? AppColors.primary)
        : (enabled ? AppColors.white : AppColors.black);
    return Container(
      decoration: decoration,
      margin: margin ?? EdgeInsets.zero,
      width: width,
      child: MaterialButton(
        padding:
            padding ?? EdgeInsets.symmetric(horizontal: 32.w, vertical: 4.h),
        height: height ?? 56.h,
        minWidth: 0,
        onPressed: enabled ? onPressed as void Function()? : null,
        child: isLoading
            ? SizedBox(
                height: 20.h,
                child: Center(
                  child: SpinKitWave(
                    color: isOutlined ? AppColors.primary : AppColors.white,
                    size: 20.h,
                  ),
                ),
              )
            : Row(
                mainAxisAlignment: prefixIcon == null && suffixIcon == null
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.center,
                children: [
                  if (prefixIcon != null) prefixIcon!,
                  SizedBox(width: 10.w),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.h),
                    child: Text(
                      title!,
                      style: textStyle ??
                          TextStyles.labelLarge.copyWith(
                              color: isOutlined
                                  ? AppColors.primary
                                  : AppColors.white),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  if (suffixIcon != null) suffixIcon!,
                ],
              ),
      ),
    );
  }
}

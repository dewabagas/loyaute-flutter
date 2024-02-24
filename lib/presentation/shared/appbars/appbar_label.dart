import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';

AppBar appbarLabel(
    {Function? onBackPressed,
    String? title,
    List<Widget>? actions,
    bool hasBack = true}) {
  return AppBar(
    leading: hasBack
        ? IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: onBackPressed as void Function()?)
        : const SizedBox.shrink(),
    title: Text(
      title ?? '',
      style: TextStyles.headlineSmall
          .copyWith(color: AppColors.brokenWhite, fontSize: 16.sp),
    ),
    centerTitle: true,
    backgroundColor: AppColors.primary,
    actions: actions,
    elevation: 0,
  );
}

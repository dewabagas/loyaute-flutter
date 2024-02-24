import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';

class ButtonMenu extends StatelessWidget {
  final String icon;
  final String title;
  final Function()? onTap;
  const ButtonMenu(
      {Key? key, required this.icon, required this.title, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 56.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 56.w,
              height: 56.w,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.blue),
              child: Center(
                child: SvgPicture.asset(
                  icon,
                  width: 24.w,
                  height: 24.w,
                ),
              ),
            ),
            SizedBox(height: 8.h),
            SizedBox(
              height: 23.h,
              // width: 56.w,
              child: Center(
                child: Text(
                  title,
                  style:
                      TextStyles.bodySmall.copyWith(color: AppColors.charcoal),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

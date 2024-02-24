import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';

class CardProfileItem extends StatelessWidget {
  final String image;
  final String title;
  final Function()? onPressed;
  final bool hasBadge;
  final String? badgeTitle;
  const CardProfileItem(
      {super.key,
      required this.image,
      required this.title,
      this.onPressed,
      this.hasBadge = false,
      this.badgeTitle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 9.41.w, vertical: 9.41.h),
                decoration: BoxDecoration(
                  color: AppColors.brokenWhite,
                  borderRadius: BorderRadius.circular(9.41.r),
                ),
                child: SvgPicture.asset(image),
              ),
              SizedBox(width: 12.w),
              Text(title, style: TextStyles.bodyMedium),
            ],
          ),
          Row(
            children: [
              Visibility(
                visible: hasBadge,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                  decoration: BoxDecoration(
                      color: AppColors.softBlue,
                      borderRadius: BorderRadius.circular(100.r)),
                  child: Text('$badgeTitle',
                      style: TextStyles.bodyVerySmall
                          .copyWith(color: AppColors.blue2)),
                ),
              ),
              SizedBox(width: 15.w),
              const Icon(Icons.chevron_right_outlined,
                  color: AppColors.lightGrey9)
            ],
          )
        ],
      ),
    );
  }
}

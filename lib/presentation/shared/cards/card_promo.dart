import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loyaute/domain/merchant/models/merchant.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';
import 'package:loyaute/presentation/core/utils/common_utils.dart';

class CardPromo extends StatelessWidget {
  final String image;
  final String title;
  final Merchant merchant;
  final int point;

  const CardPromo(
      {super.key,
      required this.image,
      required this.title,
      this.point = 0,
      required this.merchant});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image.asset(image, width: 158.w, height: 158.w),
      SizedBox(height: 16.h),
      Row(
        children: [
          Image.asset(
            merchant.icon,
            height: 16.w,
            width: 16.w,
          ),
          SizedBox(width: 8.w),
          Text(merchant.name,
              style:
                  TextStyles.bodyMedium.copyWith(fontWeight: FontWeight.w400)),
        ],
      ),
      Text(trimText(title, 20), style: TextStyles.labelLarge),
      SizedBox(height: 6.w),
      Text('Point earned',
          style: TextStyles.bodyMedium
              .copyWith(color: AppColors.neutral, fontWeight: FontWeight.w400)),
      SizedBox(height: 2.w),
      Row(
        children: [
          SvgPicture.asset(
            AppIcons.icPoint,
            height: 16.w,
            width: 16.w,
          ),
          SizedBox(width: 6.w),
          Text(point.toString(),
              style:
                  TextStyles.bodyMedium.copyWith(fontWeight: FontWeight.w400)),
        ],
      ),
    ]);
  }
}

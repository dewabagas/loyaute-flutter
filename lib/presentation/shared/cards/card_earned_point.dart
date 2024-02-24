import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';

class CardEarnedPoint extends StatefulWidget {
  final String? title;
  final String? image;
  final int? pointEarned;
  final String? dateTime;
  const CardEarnedPoint(
      {super.key, this.title, this.image, this.pointEarned, this.dateTime});

  @override
  State<CardEarnedPoint> createState() => _CardEarnedPointState();
}

class _CardEarnedPointState extends State<CardEarnedPoint> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset('${widget.image}', height: 40.w, width: 40.w),
            SizedBox(width: 12.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${widget.title}',
                    style: TextStyles.bodyLarge
                        .copyWith(color: AppColors.neutralDark)),
                SizedBox(height: 4.h),
                Text('${widget.dateTime}',
                    style: TextStyles.bodySmall.copyWith(
                        fontWeight: FontWeight.w400, color: AppColors.neutral))
              ],
            )
          ],
        ),
        Text('+${widget.pointEarned} Points',
            style: TextStyles.bodyMedium.copyWith(color: AppColors.neutralDark))
      ],
    );
  }
}

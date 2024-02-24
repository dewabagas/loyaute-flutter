import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loyaute/domain/history/models/point_earned.dart';
import 'package:loyaute/domain/merchant/models/merchant.dart';
import 'package:loyaute/domain/promo/models/promo.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';
import 'package:loyaute/presentation/shared/cards/card_earned_point.dart';

class TabHistoryRedeemed extends StatefulWidget {
  const TabHistoryRedeemed({Key? key}) : super(key: key);

  @override
  State<TabHistoryRedeemed> createState() => _TabHistoryRedeemedState();
}

class _TabHistoryRedeemedState extends State<TabHistoryRedeemed> {
  final List<PointEarned> promos = [
    PointEarned(
        image: AppBanners.bnrStarbucksSquare,
        merchant: Merchant(name: 'Starbucks', icon: AppIcons.icStarbucksSmall),
        dateTime: '25 December 2023, 10:24',
        totalPoints: 250),
    PointEarned(
        image: AppBanners.bnrKfcSquare,
        merchant: Merchant(name: 'KFC', icon: AppIcons.icKfcSmall),
        dateTime: '22 December 2023, 14:00',
        totalPoints: 172),
    PointEarned(
        image: AppBanners.bnrSegariSquare,
        merchant: Merchant(name: 'Segari', icon: AppIcons.icSegariSmall),
        dateTime: '15 December 2023, 22:31',
        totalPoints: 104),
    PointEarned(
        image: AppBanners.bnrDominosSquare,
        merchant:
            Merchant(name: 'Domino\'s Pizza', icon: AppIcons.icDominosSmall),
        dateTime: '2 December 2023, 19:45',
        totalPoints: 53),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24.h),
            Text('December 2023',
                style: TextStyles.bodyMedium.copyWith(
                    fontWeight: FontWeight.w600, color: AppColors.lightGrey8)),
            SizedBox(height: 16.h),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: promos.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 12.h),
                  child: CardEarnedPoint(
                    image: promos[index].merchant?.icon,
                    dateTime: promos[index].dateTime,
                    pointEarned: promos[index].totalPoints,
                    title: promos[index].merchant?.name,
                  ),
                );
              },
            ),
            SizedBox(height: 32.h),
            Text('November 2023',
                style: TextStyles.bodyMedium.copyWith(
                    fontWeight: FontWeight.w600, color: AppColors.lightGrey8)),
            SizedBox(height: 16.h),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: promos.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 12.h),
                  child: CardEarnedPoint(
                    image: promos[index].merchant?.icon,
                    dateTime: promos[index].dateTime,
                    pointEarned: promos[index].totalPoints,
                    title: promos[index].merchant?.name,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

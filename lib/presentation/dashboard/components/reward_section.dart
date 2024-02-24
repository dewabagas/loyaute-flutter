import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loyaute/domain/merchant/models/merchant.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';

class RewardSection extends StatefulWidget {
  const RewardSection({Key? key}) : super(key: key);

  @override
  State<RewardSection> createState() => _RewardSectionState();
}

class _RewardSectionState extends State<RewardSection> {
  final List<Merchant> rewards = [
    Merchant(name: 'Foods', icon: AppIcons.icFoods),
    Merchant(name: 'Groceries', icon: AppIcons.icGroceries),
    Merchant(name: 'Beverages', icon: AppIcons.icBeverages),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Rewards',
                  style: TextStyles.titleMedium.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.charcoal,
                  ),
                ),
                Text(
                  'View More',
                  style: TextStyles.bodySmall.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          Container(
            height: 38.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: rewards.length,
              itemBuilder: (BuildContext context, int index) {
                final merchant = rewards[index];
                return Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                  margin: EdgeInsets.only(
                      right: 18.w, left: index == 0 ? 24.w : 0.w),
                  height: 38.h,
                  decoration: BoxDecoration(
                      color: AppColors.lightGrey12,
                      borderRadius: BorderRadius.circular(100.r)),
                  child: Row(
                    children: [
                      Image.asset(
                        merchant.icon,
                        height: 18.w,
                        width: 18.w,
                      ),
                      SizedBox(width: 8.w),
                      Text(merchant.name,
                          style: TextStyles.bodySmall
                              .copyWith(fontWeight: FontWeight.w400)),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

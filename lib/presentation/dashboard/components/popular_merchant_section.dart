import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loyaute/domain/merchant/models/merchant.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';

class PopularMerchantSection extends StatefulWidget {
  const PopularMerchantSection({Key? key}) : super(key: key);

  @override
  State<PopularMerchantSection> createState() => _PopularMerchantSectionState();
}

class _PopularMerchantSectionState extends State<PopularMerchantSection> {
  final List<Merchant> merchants = [
    Merchant(name: 'Pizza Hut', icon: AppIcons.icPizzahut),
    Merchant(name: 'Starbucks', icon: AppIcons.icStarbucks),
    Merchant(name: 'McDonald\'s', icon: AppIcons.icMcdonald),
    Merchant(name: 'Domino\'s', icon: AppIcons.icDominos),
    Merchant(name: 'KFC', icon: AppIcons.icKfc),
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
                  'Popular Merchant',
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
            height: 97.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: merchants.length,
              itemBuilder: (BuildContext context, int index) {
                final merchant = merchants[index];
                return Container(
                  margin: EdgeInsets.only(
                      right: 18.w, left: index == 0 ? 24.w : 0.w),
                  child: Column(
                    children: [
                      Image.asset(
                        merchant.icon,
                        height: 64.w,
                        width: 64.w,
                      ),
                      SizedBox(height: 10.h),
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

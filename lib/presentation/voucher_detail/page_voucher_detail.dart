import 'dart:async';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';
import 'package:loyaute/presentation/core/constants/strings.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';
import 'package:loyaute/presentation/dashboard/components/latest_promo_section.dart';
import 'package:loyaute/presentation/shared/others/dashed_divider.dart';
import 'package:loyaute/presentation/shared/others/list_item.dart';
import 'package:loyaute/presentation/shared/pages/draggable_page.dart';

class PageVoucherDetail extends StatefulWidget {
  const PageVoucherDetail({super.key});

  @override
  State<PageVoucherDetail> createState() => _PageVoucherDetailState();
}

class _PageVoucherDetailState extends State<PageVoucherDetail> {
  final List<Map<String, String>> listBenefits = [
    {
      'title': 'Double the Enjoyment:',
      'body':
          'With the BOGO voucher, you get the opportunity to enjoy two Starbucks beverages for the price of one. This means you can savor your favorite coffee or try a new drink without worrying about the additional cost.'
    },
    {
      'title': 'Perfect for Sharing Moments:',
      'body':
          'The BOGO voucher is ideal for sharing moments with friends, family, or colleagues. Whether it\'s catching up over coffee or surprising a loved one with their favorite Starbucks drink, the voucher enhances the social aspect of enjoying Starbucks together.'
    },
    {
      'title': 'Exploration of Flavors:',
      'body':
          'Use the BOGO voucher to explore a variety of flavors and beverages. Try a different coffee blend, experiment with various syrups, or opt for a seasonal specialty drink. This promotion encourages customers to broaden their taste preferences',
    },
  ];

  final List<Map<String, String>> listHowToGet = [
    {
      'title': 'Visit Starbucks:',
      'body': 'Swing by any participating Starbucks store'
    },
    {
      'title': 'Order Your Favorite:',
      'body': 'Choose your go-to handcrafted beverage from the menu'
    },
    {
      'title': 'Mention BOGO at Checkout:',
      'body':
          'Inform the barista you\'re here for the Buy One Get One deal when placing your order.',
    },
    {
      'title': 'Enjoy the Extra Treat:',
      'body':
          'Pay for one drink and savor a second one for free. Limited time only, so seize the moment!',
    },
  ];

  final List<Map<String, String>> listTerms = [
    {
      'title':
          'This promotion is valid for a limited time only and is subject to change without notice',
    },
    {
      'title':
          'To avail of the Buy One Get One (BOGO) offer, customers must purchase a qualifying beverage at the regular price to receive a second beverage of equal or lesser value at no additional cost.',
    },
    {
      'title':
          'The BOGO offer is applicable to select handcrafted beverages and sizes, as determined by Starbucks. Exclusions may apply.',
    },
    {
      'title':
          'This promotion is valid at participating Starbucks stores only. Please check with your local store to confirm participation.',
    },
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DraggablePage(
      appBarColor: AppColors.white,
      backgroundColor: AppColors.white,
      alwaysShowLeadingAndAction: false,
      headerExpandedHeight: 0.25,
      title: Text(
        'Promo',
        style: TextStyles.bodyLarge,
      ),
      actions: [headerSuffixIcon()],
      headerWidget: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            AppBanners.bnrStarbucksDetail,
            fit: BoxFit.cover,
            alignment: Alignment.center,
          )),
          Padding(
            padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 40.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back, color: AppColors.white)),
                headerSuffixIcon()
              ],
            ),
          ),
        ],
      ),
      body: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(AppIcons.icStarbucksSmall,
                      width: 24.w, height: 24.w),
                  SizedBox(width: 8.w),
                  Text('Starbucks',
                      style: TextStyles.bodyLarge
                          .copyWith(fontWeight: FontWeight.w400))
                ],
              ),
              SizedBox(height: 11.h),
              Text('STARBUCKS BUY ONE GET ONE',
                  style: TextStyles.titleLarge
                      .copyWith(fontSize: 20.sp, color: AppColors.charcoal)),
              SizedBox(height: 16.h),
              const Divider(
                  color: AppColors.dividerColor2, thickness: 1, height: 0),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.79.r),
                        color: AppColors.brokenWhite,
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 8.79.w, vertical: 8.79.h),
                      child: SvgPicture.asset(BottomBar.icHistory)),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Expiry Date',
                          style: TextStyles.bodySmall
                              .copyWith(color: AppColors.lightGrey9)),
                      SizedBox(height: 2.h),
                      Text('30 Februray 2024 - 07 March 2024',
                          style: TextStyles.bodySmall),
                    ],
                  )
                ],
              ),
              SizedBox(height: 16.h),
              Text(AppStrings.voucherDetailDesc,
                  textAlign: TextAlign.justify,
                  style: TextStyles.bodyMedium
                      .copyWith(fontWeight: FontWeight.w400)),
              SizedBox(height: 32.h),
              const DashedDivider(
                  height: 1,
                  color: AppColors.dividerColor2,
                  dashWidth: 5,
                  dashSpace: 2),
              SizedBox(height: 32.h),
              Text('Benefits',
                  style: TextStyles.headlineSmall
                      .copyWith(color: AppColors.charcoal, fontSize: 16.sp)),
              SizedBox(height: 4.h),
              ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: listBenefits.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final item = listBenefits[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 23.h),
                    child: ListItem(
                      title: item['title'] ?? '',
                      body: item['body'] ?? '',
                      listType: ListType.unordered,
                    ),
                  );
                },
              ),
              SizedBox(height: 32.h),
              Text('How to get',
                  style: TextStyles.headlineSmall
                      .copyWith(color: AppColors.charcoal, fontSize: 16.sp)),
              SizedBox(height: 4.h),
              ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: listHowToGet.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final item = listHowToGet[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 23.h),
                    child: ListItem(
                      title: item['title'] ?? '',
                      body: item['body'] ?? '',
                      index: index + 1,
                      listType: ListType.ordered,
                    ),
                  );
                },
              ),
              SizedBox(height: 32.h),
              Text('Terms and Conditions',
                  style: TextStyles.headlineSmall
                      .copyWith(color: AppColors.charcoal, fontSize: 16.sp)),
              SizedBox(height: 4.h),
              ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: listTerms.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final item = listTerms[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 23.h),
                    child: orderedList(
                      index + 1,
                      item['title'] ?? '',
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        const LatestPromoSection(),
        SizedBox(height: 32.h),
      ],
    );
  }

  Widget orderedList(int number, String body) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$number. ', style: TextStyles.bodyMedium),
        SizedBox(width: 10.w),
        Expanded(
          child: SizedBox(
            width: 311.w,
            child: Text(
              body,
              textAlign: TextAlign.justify,
              style:
                  TextStyles.bodyMedium.copyWith(fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }

  Widget headerSuffixIcon() {
    return Row(
      children: [
        // IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.share, color: AppColors.white)),
        // IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.favorite_outline, color: AppColors.white)),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';
import 'package:loyaute/presentation/dashboard/components/card_point_balance.dart';
import 'package:loyaute/presentation/shared/buttons/button_primary.dart';
import 'package:loyaute/presentation/shared/cards/card_profile_item.dart';

class TabProfile extends StatefulWidget {
  const TabProfile({super.key});

  @override
  State<TabProfile> createState() => _TabProfileState();
}

class _TabProfileState extends State<TabProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        leading: const SizedBox.shrink(),
        toolbarHeight: 44.h,
        title: Text('Profile',
            style: TextStyles.bodyLarge.copyWith(fontWeight: FontWeight.w700)),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.h),
              Row(
                children: [
                  Image.asset(AppImages.imgPersonMaleLarge,
                      height: 85.07.w, width: 85.07.w),
                  SizedBox(width: 11.81.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Johan Doe',
                          style: TextStyles.titleMedium
                              .copyWith(color: AppColors.charcoal)),
                      Text('johandoe@gmail.com',
                          style: TextStyles.bodySmall
                              .copyWith(fontWeight: FontWeight.w300)),
                      SizedBox(height: 10.h),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 37.w, vertical: 7.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(
                                color: AppColors.lightGrey9, width: 1)),
                        child: Text('Edit Profile',
                            style: TextStyles.bodyVerySmall),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 32.31.h),
              const CardPointBalance(),
              SizedBox(height: 32.h),
              Text('ACCOUNT',
                  style: TextStyles.bodySmall
                      .copyWith(color: AppColors.lightGrey8)),
              SizedBox(height: 11.h),
              CardProfileItem(
                image: AppIcons.icBellDotted,
                title: 'Notifications',
                hasBadge: true,
                badgeTitle: '3 New',
                onPressed: () {},
              ),
              SizedBox(height: 11.h),
              CardProfileItem(
                image: AppIcons.icSecurity,
                title: 'Security',
                hasBadge: false,
                onPressed: () {},
              ),
              SizedBox(height: 24.h),
              Text('GENERAL',
                  style: TextStyles.bodySmall
                      .copyWith(color: AppColors.lightGrey8)),
              SizedBox(height: 11.h),
              CardProfileItem(
                image: AppIcons.icHelpCenter,
                title: 'Help Center',
                hasBadge: false,
                onPressed: () {},
              ),
              SizedBox(height: 11.h),
              CardProfileItem(
                image: AppIcons.icLanguage,
                title: 'Language',
                hasBadge: false,
                onPressed: () {},
              ),
              SizedBox(height: 11.h),
              CardProfileItem(
                image: AppIcons.icTerms,
                title: 'Terms of Service',
                hasBadge: false,
                onPressed: () {},
              ),
              SizedBox(height: 11.h),
              CardProfileItem(
                image: AppIcons.icSettings,
                title: 'Settings',
                hasBadge: false,
                onPressed: () {},
              ),
              SizedBox(height: 11.h),
              CardProfileItem(
                image: AppIcons.icPrivacy,
                title: 'Privacy Policy',
                hasBadge: false,
                onPressed: () {},
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}

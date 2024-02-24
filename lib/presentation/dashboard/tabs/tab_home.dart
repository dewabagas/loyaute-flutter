import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';
import 'package:loyaute/presentation/dashboard/components/card_point_balance.dart';
import 'package:loyaute/presentation/dashboard/components/greeting_section.dart';
import 'package:loyaute/presentation/dashboard/components/latest_promo_section.dart';
import 'package:loyaute/presentation/dashboard/components/menu_shortcut_section.dart';
import 'package:loyaute/presentation/dashboard/components/popular_merchant_section.dart';
import 'package:loyaute/presentation/dashboard/components/promo_section.dart';
import 'package:loyaute/presentation/dashboard/components/reward_section.dart';
import 'package:loyaute/presentation/shared/pages/page_arc_top.dart';

class TabHome extends StatefulWidget {
  const TabHome({super.key});

  @override
  State<TabHome> createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  @override
  Widget build(BuildContext context) {
    return PageArcTop(
        child: Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 53.h, bottom: 58.h),
              child: Align(
                  alignment: Alignment.center, // Ubah ini sesuai kebutuhan
                  child: SvgPicture.asset(AppLogo.icLoyauteFullWhite,
                      width: 102.w, height: 19.h)),
            ),
            const GreetingSectionn(),
            SizedBox(height: 24.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: const CardPointBalance(),
            ),
            SizedBox(height: 40.h),
            const MenuShortcutSection(),
            SizedBox(height: 32.h),
            const LatestPromoSection(),
            SizedBox(height: 32.h),
            const PopularMerchantSection(),
            SizedBox(height: 32.h),
            const RewardSection(),
            SizedBox(height: 24.h),
            const PromoSection()
          ],
        ),
      ),
    ));
  }
}

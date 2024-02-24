import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';
import 'package:loyaute/presentation/dashboard/components/greeting_section.dart';
import 'package:loyaute/presentation/dashboard/components/latest_promo_section.dart';
import 'package:loyaute/presentation/dashboard/components/menu_shortcut_section.dart';
import 'package:loyaute/presentation/shared/pages/page_arc_top.dart';
import 'package:loyaute/presentation/shared/pages/page_curved.dart';
import 'package:loyaute/presentation/shared/pages/page_decoration_top.dart';
import 'package:loyaute/presentation/shared/shapes/curved_top_clipper.dart';

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
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 53.h, bottom: 58.h),
            child: Align(
                alignment: Alignment.center, // Ubah ini sesuai kebutuhan
                child: SvgPicture.asset(AppLogo.icLoyauteFullWhite,
                    width: 102.w, height: 19.h)),
          ),
          GreetingSectionn(),
          SizedBox(height: 56.h),
          MenuShortcutSection(),
          SizedBox(height: 32.h),
          LatestPromoSection()
        ],
      ),
    ));
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 0.w),
        children: [
          ClipPath(
            clipper: CurvedTopClipper(),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 198.h,
                  color: AppColors.primary,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 80.h),
                  child: Align(
                      alignment: Alignment.center, // Ubah ini sesuai kebutuhan
                      child: SvgPicture.asset(AppLogo.icLoyauteFullWhite,
                          width: 102.w, height: 19.h)),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}

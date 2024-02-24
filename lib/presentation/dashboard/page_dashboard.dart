import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';
import 'package:loyaute/presentation/dashboard/tabs/tab_history.dart';
import 'package:loyaute/presentation/dashboard/tabs/tab_home.dart';
import 'package:loyaute/presentation/dashboard/tabs/tab_profile.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class PageDashboard extends StatefulWidget {
  final int? tabIndex;
  const PageDashboard({Key? key, this.tabIndex}) : super(key: key);

  @override
  State<PageDashboard> createState() => _PageDashboardState();
}

class _PageDashboardState extends State<PageDashboard> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.tabIndex ?? 0;
    FlutterNativeSplash.remove();
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(BottomBar.icHomeActive),
          inactiveIcon: SvgPicture.asset(BottomBar.icHome),
          title: 'Home',
          textStyle:
              TextStyles.bodyMedium.copyWith(fontWeight: FontWeight.w400)),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(BottomBar.icHistoryActive),
          inactiveIcon: SvgPicture.asset(BottomBar.icHistory),
          title: 'History',
          textStyle:
              TextStyles.bodyMedium.copyWith(fontWeight: FontWeight.w400)),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(BottomBar.icInboxActive),
          inactiveIcon: SvgPicture.asset(BottomBar.icInbox),
          title: 'Inbox',
          textStyle:
              TextStyles.bodyMedium.copyWith(fontWeight: FontWeight.w400)),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(BottomBar.icProfileActive),
          inactiveIcon: SvgPicture.asset(BottomBar.icProfile),
          title: 'Profile',
          textStyle:
              TextStyles.bodyMedium.copyWith(fontWeight: FontWeight.w400)),
    ];
  }

  List<Widget> _buildScreens() {
    return [
      const TabHome(),
      TabHistory(),
      const TabHome(),
      const TabProfile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: PersistentTabController(initialIndex: _currentIndex),
      screens: _buildScreens(),
      items: _navBarItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        colorBehindNavBar: Colors.transparent,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -5),
            blurRadius: 14,
            spreadRadius: 0,
            color: const Color(0xFFCBCDCE).withOpacity(0.18),
          ),
        ],
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      navBarHeight: 83.h,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.simple, // Choose the nav bar style with this property
    );
  }
}

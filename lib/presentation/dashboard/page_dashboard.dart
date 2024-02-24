import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';
import 'package:loyaute/presentation/dashboard/tabs/tab_home.dart';
import 'package:loyaute/presentation/shared/others/icon_bottom_nav_bar.dart';

class PageDashboard extends StatefulWidget {
  final int? tabIndex;
  const PageDashboard({super.key, this.tabIndex});

  @override
  State<PageDashboard> createState() => _PageDashboardState();
}

class _PageDashboardState extends State<PageDashboard> {
  int _currentIndex = 0;

  final List<IconBottomNavBarItem> items = [
    IconBottomNavBarItem(
        iconActive: BottomBar.icHomeActive,
        iconInactive: BottomBar.icHome,
        label: 'Home'),
    IconBottomNavBarItem(
        iconActive: BottomBar.icHistoryActive,
        iconInactive: BottomBar.icHistory,
        label: 'History'),
    IconBottomNavBarItem(
        iconActive: BottomBar.icInboxActive,
        iconInactive: BottomBar.icInbox,
        label: 'Inbox'),
    IconBottomNavBarItem(
        iconActive: BottomBar.icProfileActive,
        iconInactive: BottomBar.icProfile,
        label: 'Profile'),
  ];

  static final List widgetOptions = [
    const TabHome(),
    const TabHome(),
    const TabHome(),
    const TabHome(),
  ];

  void _onItemTapped(int? index) {
    setState(() {
      _currentIndex = index!;
    });
  }

  @override
  void initState() {
    FlutterNativeSplash.remove();
    initIndex();
    super.initState();
  }

  void initIndex() {
    _currentIndex = widget.tabIndex ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(_currentIndex),
      bottomNavigationBar: IconBottomAppNavBar(
        backgroundColor: AppColors.white,
        notchedShape: const CircularNotchedRectangle(),
        onTabSelected: _onItemTapped,
        initialPage: _currentIndex,
        items: items,
      ),
    );
  }
}

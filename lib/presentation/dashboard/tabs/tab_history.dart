import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';
import 'package:loyaute/presentation/dashboard/tabs/tab_history_earned.dart';
import 'package:loyaute/presentation/dashboard/tabs/tab_history_redeemed.dart';

class TabHistory extends StatefulWidget {
  @override
  _TabHistoryState createState() => _TabHistoryState();
}

class _TabHistoryState extends State<TabHistory>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        leading: const SizedBox.shrink(),
        toolbarHeight: 44.h,
        title: Text('History',
            style: TextStyles.bodyLarge.copyWith(fontWeight: FontWeight.w700)),
        bottom: TabBar(
          controller: _tabController,
          dividerColor: AppColors.lightGrey9,
          labelColor: AppColors.primary,
          unselectedLabelColor: AppColors.neutral,
          labelStyle:
              TextStyles.bodyMedium.copyWith(fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyles.bodyMedium,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: AppColors.primary,
          tabs: const [
            Tab(text: 'Earned'),
            Tab(text: 'Redeemed'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [TabHistoryEarned(), TabHistoryRedeemed()],
      ),
    );
  }
}

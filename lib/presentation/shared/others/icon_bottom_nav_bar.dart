import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';

class IconBottomNavBarItem {
  IconBottomNavBarItem({this.iconActive, this.iconInactive, this.label});

  String? iconActive;
  String? iconInactive;
  String? label;
}

class IconBottomAppNavBar extends StatefulWidget {
  IconBottomAppNavBar({
    Key? key,
    this.items,
    this.centerItemText,
    this.backgroundColor,
    this.notchedShape,
    this.onTabSelected,
    this.initialPage,
  }) : super(key: key) {
    assert(items!.length == 4);
  }

  final List<IconBottomNavBarItem>? items;
  final String? centerItemText;
  final Color? backgroundColor;
  final NotchedShape? notchedShape;
  final ValueChanged<int?>? onTabSelected;
  final int? initialPage;

  @override
  _IconBottomAppNavBarState createState() => _IconBottomAppNavBarState();
}

class _IconBottomAppNavBarState extends State<IconBottomAppNavBar> {
  int? _selectedIndex = 0;

  _updateIndex(int? index) async {
    widget.onTabSelected!(index);

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    _selectedIndex = widget.initialPage;

    List<Widget> items = List.generate(widget.items!.length, (int index) {
      return _buildTabItem(
        item: widget.items![index],
        index: index,
        onPressed: _updateIndex,
      );
    });

    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(0, -5),
            blurRadius: 14,
            spreadRadius: 0,
            color: AppColors.lightGrey10.withOpacity(0.18))
      ]),
      child: BottomAppBar(
        shape: widget.notchedShape,
        color: widget.backgroundColor,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items,
        ),
      ),
    );
  }

  Widget _buildTabItem({
    required IconBottomNavBarItem item,
    int? index,
    ValueChanged<int?>? onPressed,
  }) {
    Color colorText =
        _selectedIndex == index ? AppColors.primary : AppColors.darkGrey2;
    String assets =
        _selectedIndex == index ? item.iconActive! : item.iconInactive!;
    FontWeight fontWeight =
        _selectedIndex == index ? FontWeight.w700 : FontWeight.w600;

    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        width: double.infinity,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => onPressed!(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  assets,
                  height: 24.w,
                  width: 24.w,
                ),
                SizedBox(height: 4.h),
                Text(
                  item.label!,
                  style: TextStyles.headlineSmall.copyWith(
                      fontSize: 10.sp,
                      color: colorText,
                      fontWeight: fontWeight),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';
import 'package:loyaute/presentation/shared/appbars/appbar_label.dart';

class PageDecorationTop extends StatelessWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;
  final String? appBarTitle;
  final List<Widget>? appBarActions;
  final Function? onBackPressed;
  final bool resizeToAvoidBottomInset;
  final bool hasBack;
  final Color? backgroundColor;
  const PageDecorationTop(
      {Key? key,
      required this.child,
      this.appBar,
      this.appBarTitle,
      this.appBarActions,
      this.resizeToAvoidBottomInset = true,
      this.hasBack = true,
      this.backgroundColor,
      this.onBackPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        appBar: appBar ??
            appbarLabel(
                title: appBarTitle,
                actions: appBarActions,
                hasBack: hasBack,
                onBackPressed: onBackPressed ?? () => Navigator.pop(context)),
        body: Container(
            color: AppColors.primary,
            child: Stack(children: [
              Container(
                height: screenHeight,
                decoration: BoxDecoration(
                    color: backgroundColor ?? AppColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r),
                    )),
              ),
              child
            ])),
      ),
    );
  }
}

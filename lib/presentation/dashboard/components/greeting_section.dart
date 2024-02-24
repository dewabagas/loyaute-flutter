import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';

class GreetingSectionn extends StatefulWidget {
  const GreetingSectionn({super.key});

  @override
  State<GreetingSectionn> createState() => _GreetingSectionnState();
}

class _GreetingSectionnState extends State<GreetingSectionn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(AppImages.imgPersonMale),
              SizedBox(width: 14.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Good Morning,',
                      style: TextStyles.bodyVerySmall.copyWith(
                          color: AppColors.charcoal,
                          fontWeight: FontWeight.w400)),
                  Text('Johan',
                      style: TextStyles.headlineSmall.copyWith(
                          color: AppColors.charcoal, fontSize: 20.sp)),
                ],
              ),
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(AppIcons.icSearch),
              SizedBox(width: 24.w),
              SvgPicture.asset(AppIcons.icBellDotted),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:barcode/barcode.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';
import 'package:loyaute/presentation/core/utils/barcode_builder.dart';
import 'package:loyaute/presentation/shared/cards/card_general.dart';
import 'package:loyaute/presentation/shared/others/barcode/widget.dart';

class CardPointBalance extends StatefulWidget {
  const CardPointBalance({super.key});

  @override
  State<CardPointBalance> createState() => _CardPointBalanceState();
}

class _CardPointBalanceState extends State<CardPointBalance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 182.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 17.h),
            decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(15.r)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Balance',
                      style: TextStyles.bodySmall.copyWith(
                          color: AppColors.white, fontWeight: FontWeight.w300)),
                  SvgPicture.asset(AppLogo.icLoyauteWhite)
                ],
              ),
              SizedBox(height: 6.h),
              RichText(
                  text: TextSpan(
                style: TextStyles.headlineSmall.copyWith(
                    color: AppColors.white, fontWeight: FontWeight.w600),
                children: const <TextSpan>[
                  TextSpan(
                    text: '1,978 ',
                  ),
                  TextSpan(
                      text: 'Points',
                      style: TextStyle(fontWeight: FontWeight.w300)),
                ],
              )),
              SizedBox(height: 6.h),
              RichText(
                  text: TextSpan(
                style: TextStyles.labelMedium.copyWith(color: AppColors.white),
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Expiration Date: ',
                  ),
                  TextSpan(
                      text: 'Jan 31, 2024',
                      style: TextStyle(fontWeight: FontWeight.w300)),
                ],
              )),
            ]),
          ),
          Positioned(
            child: Container(
              margin: EdgeInsets.only(left: 46.w, right: 46.w, top: 122.h),
              child: Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 33.w, vertical: 16.h),
                    width: double.infinity,
                    height: 84.h,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.r),
                          topRight: Radius.circular(16.r)),
                    ),
                    child: BarcodeWidget(
                      barcode: Barcode.code39(), // Barcode type and settings
                      data: 'CODE 39', // Content
                      width: 216.w,
                      height: 84.h,
                      drawText: false,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      width: double.infinity,
                      height: 37.h,
                      decoration: BoxDecoration(
                        color: AppColors.charcoal,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16.r),
                            bottomRight: Radius.circular(16.r)),
                      ),
                      child: Center(
                        child:
                            Text('165894879261361', style: TextStyles.barcode),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

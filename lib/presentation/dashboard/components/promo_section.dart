import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loyaute/domain/merchant/models/merchant.dart';
import 'package:loyaute/domain/promo/models/promo.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';
import 'package:loyaute/presentation/shared/cards/card_promo.dart';

class PromoSection extends StatefulWidget {
  const PromoSection({Key? key}) : super(key: key);

  @override
  State<PromoSection> createState() => _PromoSectionState();
}

class _PromoSectionState extends State<PromoSection> {
  final List<Promo> promos = [
    Promo(
        image: AppBanners.bnrStarbucksSquare,
        merchant: Merchant(name: 'Starbucks', icon: AppIcons.icStarbucksSmall),
        title: 'Monday Mood Booster Starbucks',
        totalPoints: 250),
    Promo(
        image: AppBanners.bnrKfcSquare,
        merchant: Merchant(name: 'KFC', icon: AppIcons.icKfcSmall),
        title: 'KFC Value Serbu',
        totalPoints: 172),
    Promo(
        image: AppBanners.bnrSegariSquare,
        merchant: Merchant(name: 'Segari', icon: AppIcons.icSegariSmall),
        title: 'Poromo PASTISEGAR',
        totalPoints: 104),
    Promo(
        image: AppBanners.bnrDominosSquare,
        merchant:
            Merchant(name: 'Domino\'s Pizza', icon: AppIcons.icDominosSmall),
        title: 'Domino’s: All i want for Christmas',
        totalPoints: 53),
    Promo(
        image: AppBanners.bnrHokbenSquare,
        merchant: Merchant(name: 'HokBen', icon: AppIcons.icHokbenSmall),
        title: 'HokBen: Pay Day',
        totalPoints: 147),
    Promo(
        image: AppBanners.bnrMatahariSquare,
        merchant: Merchant(name: 'Matahari', icon: AppIcons.icMatahariSmall),
        title: 'Weekend SALE!',
        totalPoints: 74),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          primary: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 16, childAspectRatio: 0.6),
          itemCount: promos.length,
          itemBuilder: (context, index) {
            return CardPromo(
                image: promos[index].image!,
                title: promos[index].title!,
                merchant: promos[index].merchant!,
                point: promos[index].totalPoints!);
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';

class LatestPromoSection extends StatefulWidget {
  const LatestPromoSection({Key? key}) : super(key: key);

  @override
  _LatestPromoSectionState createState() => _LatestPromoSectionState();
}

class _LatestPromoSectionState extends State<LatestPromoSection> {
  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();

  final List<String> banners = [
    AppBanners.bnrStarbucks,
    AppBanners.bnrKfc,
    AppBanners.bnrStarbucks,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 16.h, left: 24.w, right: 24.w),
          child: Text(
            'Latest Promo',
            style: TextStyles.titleMedium.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.charcoal,
            ),
          ),
        ),
        CarouselSlider(
          carouselController: _controller,
          items:
              banners.map((imageUrl) => _buildBannerImage(imageUrl)).toList(),
          options: CarouselOptions(
            height: 183.h,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            reverse: true,
            enableInfiniteScroll: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        // SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: banners.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: _currentIndex == entry.key ? 22.w : 6.w,
                height: 6.w,
                margin: EdgeInsets.symmetric(horizontal: 2.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(81.82.r),
                    color: _currentIndex == entry.key
                        ? AppColors.primary
                        : AppColors.lightGrey11),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildBannerImage(String imageUrl) {
    return Padding(
      padding: EdgeInsets.only(right: 0.w),
      child: Container(
        height: 183.h,
        width: 327.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
        ),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/features/onboarding/presentation/view/widgets/item_body_widget.dart';
import '../../../../../core/utilities/app_colors.dart';
import '../../../data/lists/onboardings.dart';

class CustomDotsIndicatorWidget extends StatefulWidget {
  const CustomDotsIndicatorWidget({super.key, required this.pageIndex,required this.carouselController});
  final int pageIndex;
  final CarouselSliderController carouselController;
  @override
  State<CustomDotsIndicatorWidget> createState() => _CustomDotsIndicatorWidgetState();
}

class _CustomDotsIndicatorWidgetState extends State<CustomDotsIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return  DotsIndicator(
      onTap: (index){
        setState(() {
          carouselController.animateToPage(index);
          pageIndex = index;
        });
      },
      dotsCount: OnboardingList.onboardings.length,
      position: widget.pageIndex,
      decorator: DotsDecorator(
        activeColor: AppColors.white,
        color: AppColors.nonActiveDotsIndicator,
        size:  Size(24.w,6.h),
        activeSize:  Size(24.w, 6.0.h),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.sp)),
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.sp)),
      ),
    );;
  }
}

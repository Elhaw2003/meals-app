import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/features/onboarding/data/lists/onboardings.dart';
import 'package:meals_app/features/onboarding/presentation/view/widgets/title_and_description_widget.dart';
class CustomSliderWidget extends StatelessWidget {
  const CustomSliderWidget({super.key, this.onPageChanged, this.carouselController,});
  final dynamic Function(int, CarouselPageChangedReason)? onPageChanged;
  final CarouselSliderController? carouselController;
  @override
  Widget build(BuildContext context) {
    return
      CarouselSlider(
        carouselController: carouselController,
          items: OnboardingList.onboardings.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return SizedBox(
                  width: 260.w,
                  child: TitleAndDescriptionWidget(onboardingModel: item),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 230.h,
            viewportFraction: .98,
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            onPageChanged: onPageChanged,
            scrollDirection: Axis.horizontal,
          )
      );
  }
}

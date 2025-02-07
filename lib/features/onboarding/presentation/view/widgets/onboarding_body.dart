import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/features/onboarding/presentation/view/widgets/item_body_widget.dart';
import 'package:meals_app/features/onboarding/presentation/view/widgets/onboarding_image_widget.dart';
class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        const OnboardingImageWidget(),
        Positioned(
          bottom: 32.h,
          right: 32.w,
          left: 32.w,
          child: const ItemBodyWidget(),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';

class OnboardingImageWidget extends StatelessWidget {
  const OnboardingImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      width: double.infinity,
      height: double.infinity,
      Assets.imagesOnboarding,
      fit: BoxFit.fill,
    );
  }
}

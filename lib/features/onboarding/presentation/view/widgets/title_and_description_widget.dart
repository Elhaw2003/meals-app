import 'package:flutter/material.dart';
import 'package:meals_app/features/onboarding/data/models/onboarding_model.dart';

import '../../../../../core/utilities/app_styles.dart';
import '../../../../../core/widgets/spacing_widget.dart';

class TitleAndDescriptionWidget extends StatelessWidget {
  const TitleAndDescriptionWidget({super.key, required this.onboardingModel});
  final OnboardingModel onboardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textAlign: TextAlign.center,
          onboardingModel.title,
          style: AppTextStyles.onboardingTextStyle,
        ),
        const HeightSpacing(height: 16),
        Text(
          textAlign: TextAlign.center,
          onboardingModel.description,
          style: AppTextStyles.descOnboardingTextStyle,
        ),
      ],
    );
  }
}

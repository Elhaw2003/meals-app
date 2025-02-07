import 'package:meals_app/core/utilities/app_texts.dart';
import 'package:meals_app/features/onboarding/data/models/onboarding_model.dart';

class OnboardingList{
  static List<OnboardingModel> onboardings = [
    OnboardingModel(title: AppTexts.title1Onboarding, description: AppTexts.desc1Onboarding),
    OnboardingModel(title: AppTexts.title2Onboarding, description: AppTexts.desc2Onboarding),
    OnboardingModel(title: AppTexts.title3Onboarding, description: AppTexts.desc3Onboarding),
  ];
}
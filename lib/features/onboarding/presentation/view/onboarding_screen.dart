import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/core/routes/app_routes.dart';
import 'package:meals_app/features/onboarding/data/services/onboarding_sevices.dart';
import 'package:meals_app/features/onboarding/presentation/view/widgets/onboarding_body.dart';
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_){
      bool isFirstTime = OnboardingServices.isFirstTime();
      OnboardingServices.setFirstTimeWithFalse();
      if(isFirstTime == false){
        GoRouter.of(context).pushReplacementNamed(AppRoutes.homeScreen);
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingBody(),
    );
  }
}
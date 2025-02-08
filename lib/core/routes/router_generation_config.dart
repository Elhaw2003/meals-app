import 'package:go_router/go_router.dart';
import 'package:meals_app/core/routes/app_routes.dart';
import 'package:meals_app/features/add_meal/presentation/view/add_meal_screen.dart';
import 'package:meals_app/features/home/presentation/view/home_screen.dart';
import 'package:meals_app/features/meal_details/presentation/view/meal_details_screen.dart';
import 'package:meals_app/features/onboarding/presentation/view/onboarding_screen.dart';

class RouterGenerationConfig{
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onboardingScreen,
      routes: [
        GoRoute(
          name: AppRoutes.onboardingScreen,
            path: AppRoutes.onboardingScreen,
          builder: (context, state) => const OnboardingScreen(),
        ),
        GoRoute(
          name: AppRoutes.homeScreen,
          path: AppRoutes.homeScreen,
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          name: AppRoutes.mealDetailsScreen,
          path: AppRoutes.mealDetailsScreen,
          builder: (context, state) => const MealDetailsScreen(),
        ),
        GoRoute(
          name: AppRoutes.addMealScreen,
          path: AppRoutes.addMealScreen,
          builder: (context, state) => const AddMealScreen(),
        ),
      ]
  );
}
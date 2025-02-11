import 'package:flutter/material.dart';
import 'package:meals_app/features/home/data/models/item_model.dart';
import 'package:meals_app/features/meal_details/presentation/view/widgets/meal_details_body.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key, required this.meal});
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MealDetailsBody(meal: meal),
    );
  }
}

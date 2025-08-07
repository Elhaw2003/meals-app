import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/utilities/app_styles.dart';
import 'package:meals_app/features/meal_details/presentation/view/widgets/appbar_image_meal_details.dart';
import 'package:meals_app/features/meal_details/presentation/view/widgets/item_meal_details_body.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/widgets/custom_arrow_back_widget.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import '../../../../home/data/models/item_model.dart';

class MealDetailsBody extends StatelessWidget {
  const MealDetailsBody({super.key, required this.meal});
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeightSpacing(height: 8),
          AppbarImageMealDetails(meal: meal),
          const HeightSpacing(height: 16),
          ItemMealDetailsBody(meal: meal)
        ]
    );
  }
}

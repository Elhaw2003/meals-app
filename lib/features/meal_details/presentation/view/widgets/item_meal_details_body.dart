import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/utilities/app_colors.dart';
import 'package:meals_app/core/widgets/spacing_widget.dart';
import 'package:meals_app/features/home/data/models/item_model.dart';
import 'package:meals_app/features/meal_details/presentation/view/widgets/divider_widget.dart';
import 'package:meals_app/features/meal_details/presentation/view/widgets/row_rate_time_widget.dart';
import '../../../../../core/utilities/app_styles.dart';
import '../../../../../core/utilities/app_texts.dart';

class ItemMealDetailsBody extends StatelessWidget {
  const ItemMealDetailsBody({super.key, required this.meal});
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            meal.name,
            style: AppTextStyles.blackW600Size16.copyWith(fontWeight: FontWeight.w400,fontSize: 24),
          ),
          const HeightSpacing(height: 21),
          RowRateTimeWidget(meal: meal),
          const HeightSpacing(height: 27),
          const DividerWidget(),
          const HeightSpacing(height: 24),
          Text(
            AppTexts.description,
            style: AppTextStyles.blackW600Size16,
          ),
          const HeightSpacing(height: 8),
          Text(
            meal.description,
            style: AppTextStyles.greyW400Size14,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/features/home/data/models/item_model.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/widgets/custom_row_icon_time_rate_widget.dart';

class RowRateTimeWidget extends StatelessWidget {
  const RowRateTimeWidget({super.key, required this.meal});
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.sp),
        color: AppColors.primaryColor.withOpacity(0.04),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomRowIconTimeRateWidget(text: meal.time, iconData: Icons.watch_later, sizeIcon: 14, widthBetweenIconText: 8),
          CustomRowIconTimeRateWidget(text: meal.rate.toString(), iconData: Icons.star, sizeIcon: 12, widthBetweenIconText: 8),
        ],
      ),
    );
  }
}

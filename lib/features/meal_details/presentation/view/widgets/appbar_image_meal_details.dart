import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/widgets/custom_arrow_back_widget.dart';
import '../../../../home/data/models/item_model.dart';

class AppbarImageMealDetails extends StatelessWidget {
  const AppbarImageMealDetails({super.key, required this.meal});
  final Meal meal ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8.w),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.sp),
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              height: 327.h,
              width: double.infinity,
              imageUrl: meal.imageUrl,

            ),
          ),
          Positioned(
            top: 12.h,
            child: const CustomArrowBackWidget(iconColor: AppColors.white, borderColor: AppColors.white),
          )
        ],
      ),
    );
  }
}

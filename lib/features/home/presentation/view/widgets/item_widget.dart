import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/widgets/loading_widget.dart';
import 'package:meals_app/features/home/data/models/item_model.dart';
import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_styles.dart';
import '../../../../../core/widgets/spacing_widget.dart';
class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.meal});
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.sp),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            height: 106.h,
            width: 137.w,
            imageUrl: meal.imageUrl,
            placeholder: (context, url) => const LoadingWidget(),
            errorWidget: (context, url, error) => const Icon(Icons.error,color: AppColors.red,),
          ),
        ),
        const HeightSpacing(height: 8),
        Text(
          meal.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.blackW600Size16,
        ),
        const HeightSpacing(height: 6),
        Row(
          children: [
            Icon(
              Icons.star,
              color: AppColors.primaryColor,
              size: 16.sp,
            ),
            const WidthSpacing(width: 4),
            Text(
              meal.rate.toString(),
              style: AppTextStyles.blackW600Size16.copyWith(fontSize: 12,fontWeight: FontWeight.w500),
            ),
            const WidthSpacing(width: 40),
            Icon(
              Icons.watch_later,
              color: AppColors.primaryColor,
              size: 14.sp,
            ),
            const WidthSpacing(width: 4),
            Text(
              meal.time,
              style: AppTextStyles.blackW600Size16.copyWith(fontSize: 14,fontWeight: FontWeight.w400),
            )
          ],
        )
      ],
    );
  }
}
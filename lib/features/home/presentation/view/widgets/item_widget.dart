import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_styles.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import '../../../../../generated/assets.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.sp),
          child: Image.asset(Assets.imagesCategoryImage,fit: BoxFit.fill,),
        ),
        const HeightSpacing(height: 8),
        Text(
          "Cheese Burger",
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
              "20",
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
              "20-30",
              style: AppTextStyles.blackW600Size16.copyWith(fontSize: 14,fontWeight: FontWeight.w400),
            )
          ],
        )
      ],
    );
  }
}
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/core/widgets/custom_row_icon_time_rate_widget.dart';
import 'package:meals_app/core/widgets/loading_widget.dart';
import 'package:meals_app/features/home/data/models/item_model.dart';
import '../../../../../core/routes/app_routes.dart';
import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_styles.dart';
import '../../../../../core/widgets/spacing_widget.dart';
class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.meal});
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).pushNamed(AppRoutes.mealDetailsScreen,extra: meal);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.sp),
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              height: 106.h,
              width: 137.w,
              imageUrl: meal.imageUrl,
              httpHeaders: const {
                "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36",
              },
              placeholder: (context, url) => const LoadingWidget(),
              errorWidget: (context, url, error) => const Icon(Icons.error,color: AppColors.red,),
            ),
          ),
          const HeightSpacing(height: 8),
          Text(
            "namevvvvhvhghghhjhf",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.blackW600Size16,
          ),
          const HeightSpacing(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomRowIconTimeRateWidget(text: meal.rate.toString(), iconData: Icons.star, sizeIcon: 16, widthBetweenIconText: 4),
              CustomRowIconTimeRateWidget(text: meal.time, iconData: Icons.watch_later, sizeIcon: 14, widthBetweenIconText: 5),
            ],
          )
        ],
      ),
    );
  }
}
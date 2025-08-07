import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/utilities/app_colors.dart';
import 'package:meals_app/core/utilities/app_styles.dart';
import 'package:meals_app/core/utilities/app_texts.dart';

import '../../../../../generated/assets.dart';

class AppbarImageWidget extends StatelessWidget {
  const AppbarImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          fit: BoxFit.fill,
          Assets.imagesAppbarImage,
          width: double.infinity,
        ),
         Positioned(
           top: 30.h,
           left: 25.w,
           child: Container(
             padding: EdgeInsets.only(left: 4.w),
             alignment: Alignment.centerLeft,
             height: 230.h,
             width: 190.w,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(48.sp),
               color: AppColors.primaryColor.withOpacity(0.1),
             ),
             child: Text(
                AppTexts.welcomeAddANewRecipe,
              style: AppTextStyles.onboardingTextStyle,
                     ),
           ),
         ),
      ],
    );
  }
}

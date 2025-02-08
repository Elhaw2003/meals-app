import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/core/routes/app_routes.dart';

import '../../../../../core/utilities/app_colors.dart';

class ArrowButtonWidget extends StatelessWidget {
  const ArrowButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        GoRouter.of(context).pushReplacementNamed(AppRoutes.homeScreen);
      },
      child: Center(
        child: Container(
          width: 62.sp,
          height: 62.sp,
          decoration: const BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.circle
          ),
          child:  Icon(
            Icons.arrow_forward,
            color: AppColors.primaryColor,
            size: 25.sp,
          ),
        ),
      ),
    );
  }
}

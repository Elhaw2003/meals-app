import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/routes/app_routes.dart';
import '../../../../../core/utilities/app_colors.dart';

class FloatingActionWidget extends StatelessWidget {
  const FloatingActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: FloatingActionButton(
          shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.sp),
              side: BorderSide(color: AppColors.primaryColor,width: 2.sp)
          ),
          backgroundColor: AppColors.white,
          foregroundColor: AppColors.primaryColor,
          child: Icon(Icons.add,size: 35.sp,),
          onPressed: (){
            GoRouter.of(context).pushNamed(AppRoutes.addMealScreen);
          }
      ),
    );
  }
}

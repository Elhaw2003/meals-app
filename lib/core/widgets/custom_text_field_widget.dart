import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/utilities/app_styles.dart';

import '../utilities/app_colors.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key, required this.hintText,this.obscureText, required this.controller, this.validator});
  final String hintText;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75.h,
      width: 331.w,
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: obscureText?? false,
        cursorColor: AppColors.primaryColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 18.w,vertical: 18.h),
          filled: true,
          fillColor: AppColors.white,
          hintText: hintText,
          hintStyle: AppTextStyles.greyW400Size14.copyWith(fontWeight: FontWeight.w500),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: AppColors.borderTextFieldColor,width: 1)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(color: AppColors.primaryColor,width: 1)
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(color: AppColors.red,width: 1)
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(color: AppColors.red,width: 1)
          ),
        ),
      ),
    );
  }
}

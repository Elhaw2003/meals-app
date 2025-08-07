import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/core/utilities/app_colors.dart';
class AppTextStyles{
  static  TextStyle onboardingTextStyle = GoogleFonts.inter(
     color: AppColors.white,
    fontWeight: FontWeight.w600,
    fontSize: 32.sp
  );
  static  TextStyle descOnboardingTextStyle = GoogleFonts.inter(
     color: AppColors.white,
    fontWeight: FontWeight.w400,
    fontSize: 14.sp
  );
  static  TextStyle whiteW600Size14 = GoogleFonts.inter(
     color: AppColors.white,
    fontWeight: FontWeight.w600,
    fontSize: 14.sp
  );
  static  TextStyle blackW600Size16 = GoogleFonts.inter(
     color: AppColors.black,
    fontWeight: FontWeight.w600,
    fontSize: 16.sp
  );
  static  TextStyle greyW400Size14 = GoogleFonts.inter(
     color: AppColors.black,
    fontWeight: FontWeight.w400,
    fontSize: 14.sp
  );
}
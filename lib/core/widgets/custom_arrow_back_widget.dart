import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/app_colors.dart';

class CustomArrowBackWidget extends StatelessWidget {
  const CustomArrowBackWidget({super.key, required this.iconColor, required this.borderColor});
  final Color iconColor;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child: Container(
        width: 36.sp,
        height: 36.sp,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: borderColor,
          ),
        ),
        child: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon:  Icon(Icons.arrow_back_ios_new,size: 17.sp,color: iconColor,),
        ),
      ),
    );
  }
}

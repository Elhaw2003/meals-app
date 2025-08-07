import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/app_colors.dart';

class CustomIconWidget extends StatelessWidget {
  const CustomIconWidget({super.key, required this.iconData, required this.size});
  final IconData iconData;
  final double size;
  @override
  Widget build(BuildContext context) {
    return  Icon(
      iconData,
      color: AppColors.primaryColor,
      size: size.sp,
    );
  }
}

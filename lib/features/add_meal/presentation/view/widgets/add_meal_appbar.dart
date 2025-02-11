import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/utilities/app_colors.dart';
import 'package:meals_app/core/widgets/custom_arrow_back_widget.dart';

import '../../../../../core/utilities/app_styles.dart';
import '../../../../../core/utilities/app_texts.dart';

class AddMealAppbar extends StatelessWidget {
  const AddMealAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 85.w,
      leading:  const CustomArrowBackWidget(
        borderColor: AppColors.borderTextFieldColor,
        iconColor: AppColors.black,
      ),
      centerTitle: true,
      title:  Text(
        AppTexts.addMeal,
        style: AppTextStyles.blackW600Size16,
      ),
    );
  }
}

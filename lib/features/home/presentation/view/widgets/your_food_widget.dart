import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_styles.dart';
import '../../../../../core/utilities/app_texts.dart';

class YourFoodWidget extends StatelessWidget {
  const YourFoodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.w),
      child: Text(
        AppTexts.yourFood,
        style: AppTextStyles.blackW600Size16,
      ),
    );
  }
}

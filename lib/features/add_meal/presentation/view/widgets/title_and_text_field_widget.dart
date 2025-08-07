import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_styles.dart';
import '../../../../../core/widgets/custom_text_field_widget.dart';
import '../../../../../core/widgets/spacing_widget.dart';

class TitleAndTextFieldWidget extends StatelessWidget {
  const TitleAndTextFieldWidget({super.key, required this.title, required this.controller, required this.hintText, this.validator, this.keyboardType, this.minLines =1, this.maxLines =1});
  final String title;
  final String hintText;
  final int minLines;
  final int maxLines;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
           title,
           style: AppTextStyles.blackW600Size16.copyWith(fontSize: 14.sp,fontWeight: FontWeight.w500),
         ),
        const HeightSpacing(height: 8),
        CustomTextFieldWidget(
          hintText: hintText,
          controller: controller,
          validator: validator,  // Ensure validator is passed
          keyboardType: keyboardType,  // Ensure keyboardType is passed
          minLines: minLines,  // Pass minLines
          maxLines: maxLines,
        )
      ],
    );
  }
}

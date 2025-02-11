import 'package:flutter/material.dart';
import 'package:meals_app/core/utilities/app_colors.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.dividerColor,
      thickness: 2,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meals_app/core/utilities/app_styles.dart';

class NextSkipWidget extends StatelessWidget {
  const NextSkipWidget({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTextStyles.whiteW600Size14,
        )
    );
  }
}

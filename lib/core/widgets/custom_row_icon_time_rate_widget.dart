import 'package:flutter/material.dart';
import 'package:meals_app/core/widgets/spacing_widget.dart';
import 'package:meals_app/features/home/data/models/item_model.dart';

import '../utilities/app_styles.dart';
import 'custom_icon_widget.dart';

class CustomRowIconTimeRateWidget extends StatelessWidget {
  const CustomRowIconTimeRateWidget({super.key, required this.iconData, required this.sizeIcon, required this.widthBetweenIconText, required this.text});
  final String text;
  final IconData iconData;
  final double sizeIcon;
  final double widthBetweenIconText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconWidget(iconData: iconData, size: sizeIcon),
         WidthSpacing(width: widthBetweenIconText),
        Text(
          text,
          style: AppTextStyles.greyW400Size14,
        ),
      ],
    );
  }
}

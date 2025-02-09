import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/features/home/presentation/view/widgets/grid_view_widget.dart';
import 'package:meals_app/features/home/presentation/view/widgets/your_food_widget.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import 'appbar_image_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppbarImageWidget(),
        const HeightSpacing(height: 25),
        const YourFoodWidget(),
        const HeightSpacing(height: 25),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: const GridViewWidget(),
          ),
        )
      ],
    );
  }
}

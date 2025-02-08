import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/features/onboarding/presentation/view/widgets/item_widget_in_container_.dart';
import '../../../../../core/utilities/app_colors.dart';

class ItemBodyWidget extends StatefulWidget {
  const ItemBodyWidget({super.key});
  @override
  State<ItemBodyWidget> createState() => _ItemBodyWidgetState();
}
int pageIndex = 0;
CarouselSliderController carouselController =  CarouselSliderController();
class _ItemBodyWidgetState extends State<ItemBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(21.sp),
      width: 311.w,
      height: 430.h,
      decoration: BoxDecoration(
          color: AppColors.primaryColor.withOpacity(0.9),
          borderRadius: BorderRadius.circular(48.sp)
      ),
      child:  const ItemWidgetInContainer(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/utilities/app_styles.dart';
import 'package:meals_app/features/home/data/models/item_model.dart';
import 'package:meals_app/features/home/presentation/view/widgets/grid_view_widget.dart';
import 'package:meals_app/features/home/presentation/view/widgets/your_food_widget.dart';
import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_texts.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import '../../../data/db_helper/db_helper.dart';
import 'appbar_image_widget.dart';
DatabaseHelper dataBaseHelper = DatabaseHelper.instance;

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
            child: FutureBuilder(
              future:dataBaseHelper.getMeals() ,
              builder: (context, snapshot) {
                if(snapshot.connectionState == ConnectionState.waiting){
                  return const Center(child: CircularProgressIndicator());
                }else if (snapshot.hasData){
                  if(snapshot.data!.isEmpty){
                    return  Center(child: Text(AppTexts.noMeals,style: AppTextStyles.onboardingTextStyle.copyWith(color: AppColors.primaryColor),));
                  }
                  return GridViewWidget(snapshot: snapshot,);
                }else if (snapshot.hasError){
                  return Center(child: Text("${snapshot.error}"));
                }
                return Container();
              },
            ),
          ),
        ),
      ],
    );
  }
}

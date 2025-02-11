import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/core/routes/app_routes.dart';
import 'package:meals_app/core/widgets/loading_widget.dart';
import 'package:meals_app/features/add_meal/presentation/view/widgets/title_and_text_field_widget.dart';
import 'package:meals_app/features/home/data/db_helper/db_helper.dart';
import 'package:meals_app/features/home/data/models/item_model.dart';
import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_texts.dart';
import '../../../../../core/widgets/custom_button_widget.dart';
import '../../../../../core/widgets/spacing_widget.dart';

class ScrollWidget extends StatefulWidget {
  const ScrollWidget({super.key});
  @override
  State<ScrollWidget> createState() => _ScrollWidgetState();
}
class _ScrollWidgetState extends State<ScrollWidget> {
  TextEditingController addMealController = TextEditingController();
  TextEditingController imageUrlController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isLoading = false;
  DatabaseHelper databaseHelper = DatabaseHelper();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Form(
          key: formKey,
          child: isLoading ? SizedBox(
            width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: const LoadingWidget()
          ): Column(
            children: [
              const HeightSpacing(height: 28),
              TitleAndTextFieldWidget(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "${AppTexts.please}${AppTexts.enterMealName}";
                  } else if (value.length < 3) {
                    return "${AppTexts.please}${AppTexts.enterValidMealName}";
                  } else {
                    return null;
                  }
                },
                title: AppTexts.mealName,
                hintText: AppTexts.enterMealName,
                controller: addMealController,
              ),
              const HeightSpacing(height: 12),
              TitleAndTextFieldWidget(
                maxLines: 3,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "${AppTexts.please}${AppTexts.enterImageUrl}";
                  } else {
                    return null;
                  }
                },
                title: AppTexts.imageURL,
                hintText: AppTexts.enterImageUrl,
                controller: imageUrlController,
              ),
              const HeightSpacing(height: 12),
              TitleAndTextFieldWidget(
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "${AppTexts.please}${AppTexts.enterRate}";
                  } else {
                    return null;
                  }
                },
                title: AppTexts.rate,
                hintText: AppTexts.enterRate,
                controller: rateController,
              ),
              const HeightSpacing(height: 12),
              TitleAndTextFieldWidget(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "${AppTexts.please}${AppTexts.enterTime}";
                  } else {
                    return null;
                  }
                },
                title: AppTexts.time,
                hintText: AppTexts.enterTime,
                controller: timeController,
              ),
              const HeightSpacing(height: 12),
              TitleAndTextFieldWidget(
                maxLines: 6,
                minLines: 3,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "${AppTexts.please}${AppTexts.enterDescription}";
                  } else {
                    return null;
                  }
                },
                title: AppTexts.description,
                hintText: AppTexts.enterDescription,
                controller: descriptionController,
              ),
              const HeightSpacing(height: 30),
              CustomButtonWidget(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      setState(() {
                        isLoading = true;
                      });
                      Meal meal = Meal(
                          name: addMealController.text.trim(),
                          imageUrl: imageUrlController.text.trim(),
                          description: descriptionController.text.trim(),
                          rate: double.parse(rateController.text.trim()),
                          time: timeController.text.trim());
                    databaseHelper.insertMeal(meal).then((value){
                      GoRouter.of(context).pushReplacementNamed(AppRoutes.homeScreen);
                      });
                    }
                  },
                  title: AppTexts.save,
                  titleColor: AppColors.white,
                  buttonColor: AppColors.primaryColor,
                  borderColor: AppColors.primaryColor),
              const HeightSpacing(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

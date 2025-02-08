import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/core/routes/app_routes.dart';
import 'package:meals_app/core/utilities/app_texts.dart';
import 'package:meals_app/features/onboarding/data/lists/onboardings.dart';
import 'package:meals_app/features/onboarding/presentation/view/widgets/arrow_button_widget.dart';
import 'package:meals_app/features/onboarding/presentation/view/widgets/next_skip_widget.dart';

import '../../../../../core/widgets/spacing_widget.dart';
import 'custom_dots_indicator_widget.dart';
import 'custom_slider_widget.dart';
import 'item_body_widget.dart';

class ItemWidgetInContainer extends StatefulWidget {
  const ItemWidgetInContainer({super.key});

  @override
  State<ItemWidgetInContainer> createState() => _ItemWidgetInContainerState();
}

class _ItemWidgetInContainerState extends State<ItemWidgetInContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSliderWidget(
          carouselController: carouselController,
          onPageChanged: (index,v){
            setState(() {
              pageIndex = index;
            });
          },
        ),
        CustomDotsIndicatorWidget(
          pageIndex: pageIndex,
          carouselController: carouselController,
        ),
        const Spacer(),
      pageIndex < OnboardingList.onboardings.length-1 ?
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NextSkipWidget(
                  onPressed: (){
                    GoRouter.of(context).pushReplacementNamed(AppRoutes.homeScreen);
                  },
                  text: AppTexts.skip,
              ),
               NextSkipWidget(
                 onPressed: (){
                   if(pageIndex < OnboardingList.onboardings.length-1){
                     pageIndex++;
                     carouselController.animateToPage(pageIndex);
                     setState(() {});
                   }
                 },
                  text: AppTexts.next,
              ),
            ]
        ):
          const ArrowButtonWidget(),
        const HeightSpacing(height: 20)
      ],
    );
  }
}
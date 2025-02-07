import 'package:flutter/material.dart';

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
        const HeightSpacing(height: 10),
        CustomDotsIndicatorWidget(
          pageIndex: pageIndex,
          carouselController: carouselController,
        ),
      ],
    );
  }
}

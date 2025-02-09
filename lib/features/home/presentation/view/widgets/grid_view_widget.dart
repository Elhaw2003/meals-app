import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'item_widget.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 2,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 30.h,
          crossAxisSpacing: 25.w,
          childAspectRatio: 0.8
      ),
      itemBuilder: (context, index) {
        return const ItemWidget();
      },
    );
  }
}

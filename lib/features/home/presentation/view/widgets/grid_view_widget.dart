import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/item_model.dart';
import 'item_widget.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key, required this.snapshot});
  final AsyncSnapshot<List<Meal>> snapshot;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: snapshot.data!.length,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 30.h,
          crossAxisSpacing: 25.w,
          childAspectRatio: 0.8
      ),
      itemBuilder: (context, index) {
        return  ItemWidget( meal: snapshot.data![index],);
      },
    );
  }
}

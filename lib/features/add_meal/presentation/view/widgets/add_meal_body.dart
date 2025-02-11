import 'package:flutter/material.dart';
import 'package:meals_app/core/utilities/app_colors.dart';
import 'package:meals_app/core/widgets/custom_button_widget.dart';
import 'package:meals_app/core/widgets/spacing_widget.dart';
import 'package:meals_app/features/add_meal/presentation/view/widgets/scroll_widget.dart';

import '../../../../../core/utilities/app_texts.dart';

class AddMealBody extends StatefulWidget {
  const AddMealBody({super.key});

  @override
  State<AddMealBody> createState() => _AddMealBodyState();
}
final GlobalKey<FormState> formKey = GlobalKey<FormState>();
class _AddMealBodyState extends State<AddMealBody> {
  @override
  Widget build(BuildContext context) {
    return  ScrollWidget();
  }
}
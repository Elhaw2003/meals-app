import 'package:flutter/material.dart';
import 'package:meals_app/features/add_meal/presentation/view/widgets/add_meal_appbar.dart';
import 'package:meals_app/features/add_meal/presentation/view/widgets/add_meal_body.dart';
class AddMealScreen extends StatelessWidget {
  const AddMealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: const AddMealAppbar(),
      ),
      body: const AddMealBody(),
    );
  }
}

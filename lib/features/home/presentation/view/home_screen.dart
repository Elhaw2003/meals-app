import 'package:flutter/material.dart';
import 'package:meals_app/features/home/presentation/view/widgets/floating_action_widget.dart';
import 'package:meals_app/features/home/presentation/view/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      body: HomeBody(),
      floatingActionButton: FloatingActionWidget(),
    );
  }
}

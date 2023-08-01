import 'package:flutter/material.dart';

import '../../infrastructure/services/app_colors_service.dart';
import '../widgets/loading_animation_widgets/loading_animation_widget_1.dart';
import '../widgets/loading_animation_widgets/loading_animation_widget_2.dart';
import '../widgets/loading_animation_widgets/loading_animation_widget_3.dart';
import '../widgets/loading_animation_widgets/loading_animation_widget_4.dart';

class LoadingAnimationPage extends StatelessWidget {
  const LoadingAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColorsService.primaryColor,
      body: Center(
        child: Stack(
          children: [
            LoadingAnimationWidget1(),
            LoadingAnimationWidget2(),
            LoadingAnimationWidget3(),
            LoadingAnimationWidget4(),
          ],
        ),
      ),
    );
  }
}

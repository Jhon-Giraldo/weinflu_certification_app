import 'package:flutter/material.dart';

import '../../infrastructure/services/app_colors_service.dart';
import '../../infrastructure/services/app_text_style_service.dart';
import '../widgets/cards_container_widget.dart';
import '../widgets/custom_bottom_navigation_bar_widget.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: AppColorsService.primaryColor,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Selecciona un curso!',
              textAlign: TextAlign.start,
              style: AppTextStylesService.appbarTextStyle,
            ),
            Icon(
              Icons.search_rounded,
              color: AppColorsService.principalIcons,
              size: 35,
            ),
          ],
        ),
      ),
      body: const Column(
        children: [
          Expanded(
            child: CardsContainer(),
          ),
          CustomBottomNavigationBar(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../infrastructure/services/app_colors_service.dart';
import '../../infrastructure/services/app_text_style_service.dart';
import '../widgets/courses_cards_container_widget.dart';
import '../widgets/custom_bottom_navigation_bar_widget.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          backgroundColor: AppColorsService.primaryColor,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Text(
                  'Elige un curso!',
                  textAlign: TextAlign.start,
                  style: AppTextStylesService.appbarTextStyle,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, right: 15),
                child: Icon(
                  Icons.search_rounded,
                  color: AppColorsService.principalIcons,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
        body: const Column(
          children: [
            Expanded(
              child: CoursesCardsContainer(),
            ),
            CustomBottomNavigationBar(),
          ],
        ),
      ),
    );
  }
}

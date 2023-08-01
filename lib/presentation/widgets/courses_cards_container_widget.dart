import 'package:flutter/material.dart';

import '../../infrastructure/services/app_colors_service.dart';
import '../../infrastructure/services/app_courses_images_service.dart';
import '../../infrastructure/services/app_courses_subtitles_service.dart';
import '../../infrastructure/services/app_courses_titles_service.dart';
import 'courses_card_widget.dart';

class CoursesCardsContainer extends StatelessWidget {
  const CoursesCardsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
        color: AppColorsService.primaryColor,
      ),
      child: Container(
        margin: const EdgeInsets.only(top: 35),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (BuildContext _, int index) => CoursesCardWidget(
              index: index,
              imageUrl: AppCoursesImagesService.images[index],
              title: AppCoursesTitlesService.titles[index],
              subtitle: AppCoursesSubtitlesService.subtitles[index]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../infrastructure/services/app_colors_service.dart';
import '../../infrastructure/services/app_teachers_images_service.dart';
import '../../infrastructure/services/app_teachers_subtitles_service.dart';
import '../../infrastructure/services/app_teachers_titles_service.dart';
import 'teachers_card_widget.dart';

class TeachersCardsContainer extends StatelessWidget {
  const TeachersCardsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height / 2.05,
      ),
      decoration: const BoxDecoration(
        color: AppColorsService.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (BuildContext _, index) => TeachersCardWidget(
          imageUrl: AppTeachersImagesService.images[index],
          subtitle: AppTeachersSubtitlesService.subtitles[index],
          title: AppTeachersTitlesService.titles[index],
          index: index,
        ),
      ),
    );
  }
}

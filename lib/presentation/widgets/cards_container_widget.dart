import 'package:flutter/material.dart';

import '../../infrastructure/services/app_colors_service.dart';
import '../../infrastructure/services/app_images_service.dart';
import '../../infrastructure/services/app_subtitles_service.dart';
import '../../infrastructure/services/app_titles_service.dart';
import 'card_widget.dart';

class CardsContainer extends StatelessWidget {
  const CardsContainer({
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
          itemBuilder: (BuildContext _, int index) => CardWidget(
              index: index,
              imageUrl: AppImagesService.images[index],
              title: AppTitlesService.titles[index],
              subtitle: AppSubtitlesService.subtitles[index]),
        ),
      ),
    );
  }
}

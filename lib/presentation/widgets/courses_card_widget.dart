import 'package:flutter/material.dart';

import '../../infrastructure/services/app_colors_service.dart';
import '../../infrastructure/services/app_text_style_service.dart';

class CoursesCardWidget extends StatelessWidget {
  final int index;
  final String imageUrl;
  final String title;
  final String subtitle;

  const CoursesCardWidget({
    required this.index,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (index == 0) {
          Navigator.of(context).pushNamed('guitarCourseScreen');
        }
      },
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: 370,
          height: 162,
          child: Container(
            decoration: BoxDecoration(
                color: index % 2 == 0
                    ? AppColorsService.cardColor1
                    : AppColorsService.cardColor2,
                borderRadius: const BorderRadius.all(Radius.circular(40))),
            margin: const EdgeInsets.only(bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(imageUrl),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStylesService.tittleStyle,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      subtitle,
                      style: AppTextStylesService.subtittleStyle,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

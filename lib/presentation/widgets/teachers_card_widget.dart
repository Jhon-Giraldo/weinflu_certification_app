import 'package:flutter/material.dart';

import '../../infrastructure/services/app_colors_service.dart';
import '../../infrastructure/services/app_text_style_service.dart';

class TeachersCardWidget extends StatelessWidget {
  final int index;
  final String imageUrl;
  final String title;
  final String subtitle;

  const TeachersCardWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 350,
        height: 100,
        child: Container(
          decoration: const BoxDecoration(color: AppColorsService.whiteColor),
          margin: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: index % 2 != 0
                      ? Border.all(
                          color: AppColorsService.navigationUnselectedIcon)
                      : const Border(),
                  shape: BoxShape.circle,
                  color: index % 2 == 0
                      ? AppColorsService.cardColor1
                      : AppColorsService.cardColor2,
                ),
                child: ClipOval(
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
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
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColorsService.blackColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:weinflu_app_idea/infrastructure/services/app_colors_service.dart';

class AppTextStylesService {
  static const TextStyle logoTextStyle = TextStyle(
      fontSize: 60,
      fontWeight: FontWeight.bold,
      color: AppColorsService.primaryColor,
      letterSpacing: -1);

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 20,
    color: AppColorsService.iconColor,
  );

  static const TextStyle appbarTextStyle = TextStyle(
    fontSize: 16,
    color: AppColorsService.whiteColor,
  );

  static const TextStyle captionStyle = TextStyle(
    fontSize: 12,
    color: AppColorsService.blackColor,
  );
}

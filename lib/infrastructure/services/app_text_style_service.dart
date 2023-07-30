import 'package:flutter/material.dart';
import 'package:weinflu_app_idea/infrastructure/services/app_colors_service.dart';

class AppTextStylesService {
  AppTextStylesService._();

  static const TextStyle logoTextStyle = TextStyle(
    fontSize: 63,
    fontWeight: FontWeight.bold,
    color: AppColorsService.primaryColor,
    letterSpacing: -1,
    fontStyle: FontStyle.italic,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 20,
    color: AppColorsService.principalIcons,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle appbarTextStyle = TextStyle(
    fontSize: 25,
    color: AppColorsService.whiteColor,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle captionStyle = TextStyle(
    fontSize: 12,
    color: AppColorsService.blackColor,
    fontStyle: FontStyle.normal,
  );
}

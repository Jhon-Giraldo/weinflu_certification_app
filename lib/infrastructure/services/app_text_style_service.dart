import 'package:flutter/material.dart';

import 'app_colors_service.dart';

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
    fontSize: 30,
    color: AppColorsService.whiteColor,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle titleStyle = TextStyle(
    fontSize: 26,
    color: AppColorsService.blackColor,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle subtitleStyle = TextStyle(
    fontSize: 15.5,
    color: AppColorsService.subtittleColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle courseTitleStyle = TextStyle(
    fontSize: 35,
    color: AppColorsService.primaryColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
  );

  static const TextStyle teachersTitleStyle = TextStyle(
    fontSize: 30,
    color: AppColorsService.blackColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle teachersNameStyle = TextStyle(
    fontSize: 21,
    color: AppColorsService.blackColor,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle teachersSubtitleStyle = TextStyle(
    fontSize: 15,
    color: AppColorsService.subtittleColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );
}

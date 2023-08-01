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

  static const TextStyle tittleStyle = TextStyle(
    fontSize: 26,
    color: AppColorsService.blackColor,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle subtittleStyle = TextStyle(
    fontSize: 15.5,
    color: AppColorsService.subtittleColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle courseTitleStyle = TextStyle(
    fontSize: 32,
    color: AppColorsService.primaryColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
  );
}

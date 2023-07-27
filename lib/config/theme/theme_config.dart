import 'package:flutter/material.dart';

import '../../infrastructure/services/app_colors_service.dart';
import '../../infrastructure/services/app_text_style_service.dart';

class ThemeConfig {
  static ThemeData getThemeData() {
    return ThemeData(
      useMaterial3: true,
      primaryColor: AppColorsService.primaryColor,
      scaffoldBackgroundColor: AppColorsService.primaryColor,
      cardColor: AppColorsService.cardColor,
      iconTheme: const IconThemeData(
        color: AppColorsService.iconColor,
      ),
      fontFamily: 'Lora',
      textTheme: const TextTheme(
        displayLarge: AppTextStylesService.logoTextStyle,
        displayMedium: AppTextStylesService.buttonTextStyle,
        bodyLarge: AppTextStylesService.appbarTextStyle,
        bodyMedium: AppTextStylesService.captionStyle,
      ),
    );
  }
}

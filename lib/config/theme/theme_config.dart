import 'package:flutter/material.dart';

import '../../infrastructure/services/app_colors_service.dart';
import '../../infrastructure/services/app_text_style_service.dart';

class ThemeConfig {
  ThemeConfig._();

  static ThemeData getThemeData() {
    return ThemeData(
      useMaterial3: true,
      primaryColor: AppColorsService.primaryColor,
      scaffoldBackgroundColor: AppColorsService.whiteColor,
      cardColor: AppColorsService.cardColor1,
      iconTheme: const IconThemeData(
        color: AppColorsService.principalIcons,
      ),
      fontFamily: 'Lora',
      textTheme: const TextTheme(
        displayLarge: AppTextStylesService.logoTextStyle,
        displayMedium: AppTextStylesService.buttonTextStyle,
        bodyLarge: AppTextStylesService.appbarTextStyle,
        bodyMedium: AppTextStylesService.subtittleStyle,
      ),
    );
  }
}

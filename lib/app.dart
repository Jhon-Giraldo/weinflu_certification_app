import 'package:flutter/material.dart';

import 'config/app_routes.dart';
import 'config/theme/theme_config.dart';
import 'presentation/screens/guitar_course_screen.dart';
import 'presentation/screens/landing_screen.dart';
import 'presentation/screens/onboarding_screen.dart';

class WeinFluMusic extends StatelessWidget {
  const WeinFluMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WeinFlu Music',
      theme: ThemeConfig.getThemeData(),
      home: const OnboardingScreen(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoutes.onBoardingScreen:
            return MaterialPageRoute(
              builder: (context) => const OnboardingScreen(),
            );
          case AppRoutes.landingScreen:
            return MaterialPageRoute(
              builder: (context) => const LandingScreen(),
            );
          case AppRoutes.guitarCourseScreen:
            return MaterialPageRoute(
              builder: (context) => const GuitarCourseScreen(),
            );
          //Por defecto será "OnBoarding"
          default:
            return MaterialPageRoute(
              builder: (context) => const OnboardingScreen(),
            );
        }
      },
    );
  }
}

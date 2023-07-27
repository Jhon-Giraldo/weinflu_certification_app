import 'package:flutter/material.dart';
import 'package:weinflu_app_idea/config/theme/theme_config.dart';
import 'package:weinflu_app_idea/presentation/screens/onboarding_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WeinFlu Music',
      theme: ThemeConfig.getThemeData(),
      home: const OnboardingScreen(),
    );
  }
}

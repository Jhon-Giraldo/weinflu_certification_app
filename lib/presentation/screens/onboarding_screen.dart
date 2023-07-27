import 'package:flutter/material.dart';

import '../widgets/start_button_widget.dart';
import '../widgets/text_logo_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/onboarding_image.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 35),
            alignment: Alignment.center,
            child: const TextLogoWidget(),
          ),
          Container(
              margin: const EdgeInsets.only(bottom: 35),
              alignment: Alignment.bottomCenter,
              child: const StartButtonWidget())
        ],
      ),
    );
  }
}

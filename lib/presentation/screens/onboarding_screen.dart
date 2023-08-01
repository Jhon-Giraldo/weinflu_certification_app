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
            'assets/images/onboarding_image.jpg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 55),
            alignment: Alignment.center,
            child: const TextLogoWidget(),
          ),
          Container(
              margin: const EdgeInsets.only(bottom: 30),
              alignment: Alignment.bottomCenter,
              child: const StartButtonWidget())
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../infrastructure/services/app_colors_service.dart';
import '../../infrastructure/services/app_text_style_service.dart';

class StartButtonWidget extends StatelessWidget {
  const StartButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(AppColorsService.primaryColor),
        foregroundColor:
            MaterialStateProperty.all(AppColorsService.principalIcons),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 40,
          ),
        ),
      ),
      onPressed: () {
        //Simulación de Carga Usando Animaciones Explícitas :D
        Navigator.of(context).pushNamed('loadingAnimationScreen');
        Future.delayed(const Duration(milliseconds: 1000), () {
          Navigator.of(context).pushReplacementNamed('landingScreen');
        });
      },
      child: const Text(
        'Empieza tu viaje',
        style: AppTextStylesService
            .buttonTextStyle, // Aplica el estilo de texto aquí
      ),
    );
  }
}

import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../infrastructure/services/app_text_style_service.dart';

class TextLogoWidget extends StatelessWidget {
  const TextLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Transform.rotate(
        angle: (-25 * math.pi / 180),
        child: const Text('WeinFlu Music',
            style: AppTextStylesService.logoTextStyle),
      ),
    );
  }
}

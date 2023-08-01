import 'package:flutter/material.dart';

import '../../infrastructure/services/app_colors_service.dart';
import '../../infrastructure/services/app_text_style_service.dart';
import '../widgets/teachers_cards_container_widget.dart';

class GuitarCourseScreen extends StatelessWidget {
  const GuitarCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Padding(
            padding: EdgeInsets.only(left: 15, bottom: 5),
            child: Icon(
              Icons.arrow_back,
              color: AppColorsService.primaryColor,
              size: 35,
            ),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Stack(
        children: [
          //! Este 1er Container se creó recursivamente para no deformar la imagen
          //! ya que el asset del Scaffold no tenía las dimensiones correctas
          Container(
            padding: const EdgeInsets.only(bottom: 40),
            height: MediaQuery.of(context).size.height / 2,
            child: Image.asset(
              'assets/images/guitar_course.jpg',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height / 2,
            child: Image.asset(
              'assets/images/guitar_course.jpg',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitHeight,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 107),
            child: Text(
              'Guitarra',
              style: AppTextStylesService.courseTitleStyle,
            ),
          ),
          const PlayIntroCourseButtom(),
          const TeachersCardsContainer(),
          const Padding(
            padding: EdgeInsets.only(top: 495, left: 35),
            child: Text(
              'Escoge tu experto!',
              style: AppTextStylesService.teachersTitleStyle,
              textAlign: TextAlign.start,
            ),
          )
        ],
      ),
    );
  }
}

class PlayIntroCourseButtom extends StatelessWidget {
  const PlayIntroCourseButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColorsService.whiteColorWithOpacity,
        ),
        margin: const EdgeInsets.only(bottom: 320),
        height: 100,
        width: 100,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.play_arrow_outlined,
            size: 70,
          ),
        ),
      ),
    );
  }
}

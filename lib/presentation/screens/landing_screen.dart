import 'package:flutter/material.dart';
import 'package:weinflu_app_idea/infrastructure/services/app_colors_service.dart';
import 'package:weinflu_app_idea/infrastructure/services/app_text_style_service.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: AppColorsService.primaryColor,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Selecciona un curso!',
              textAlign: TextAlign.start,
              style: AppTextStylesService.appbarTextStyle,
            ),
            Icon(
              Icons.search_rounded,
              color: AppColorsService.principalIcons,
              size: 28,
            ),
          ],
        ),
      ),
      body: const Column(
        children: [
          Expanded(
            child: CardsContainer(),
          ),
          CustomBottomNavigationBar(),
        ],
      ),
    );
  }
}

class CardsContainer extends StatelessWidget {
  const CardsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColorsService.primaryColor,
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext _, int index) => const CardWidget(),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.amber,
      margin: const EdgeInsets.only(bottom: 10),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: AppColorsService.navigationselectedIcon,
            size: 40,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: AppColorsService.navigationUnselectedIcon,
            size: 40,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.push_pin_outlined,
            color: AppColorsService.navigationUnselectedIcon,
            size: 40,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline_rounded,
            color: AppColorsService.navigationUnselectedIcon,
            size: 40,
          ),
          label: '',
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../infrastructure/services/app_colors_service.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        iconSize: 40,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: AppColorsService.navigationUnselectedIcon,
        selectedItemColor: AppColorsService.navigationselectedIcon,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Transform.rotate(
              angle: 3.8,
              child: const Icon(
                Icons.push_pin_outlined,
              ),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_rounded,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

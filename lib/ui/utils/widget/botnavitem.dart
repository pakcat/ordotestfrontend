import 'package:flutter/material.dart';

BottomNavigationBarItem BotNavItem(String image) {
  return BottomNavigationBarItem(
    icon: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ImageIcon(AssetImage(image)),
    ),
    label: '',
  );
}

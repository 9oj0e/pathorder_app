import 'package:flutter/material.dart';
import 'package:pathorder_app/menu_holders/all_menu/all_menu_page.dart';

class MenuHolder extends StatelessWidget {
  const MenuHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AllMenuPage(),
    );
  }
}

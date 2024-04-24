import 'package:flutter/material.dart';

import 'components/menu_option.dart';

class MenuOptionPage extends StatelessWidget {
  const MenuOptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MenuOption(),
    );
  }
}

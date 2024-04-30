import 'package:flutter/material.dart';

class MenuOptionCategory extends StatelessWidget {

  final optionCategory;

  const MenuOptionCategory({
    required this.optionCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      optionCategory,
      style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w600),
    );
  }
}
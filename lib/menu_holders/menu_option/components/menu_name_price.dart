import 'package:flutter/material.dart';

class MenuNamePrice extends StatelessWidget {
  final menuName;
  final price;

  const MenuNamePrice({
    required this.menuName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              menuName,
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              price,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
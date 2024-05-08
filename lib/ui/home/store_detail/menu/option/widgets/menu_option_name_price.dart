import 'package:flutter/material.dart';

class MenuOptionNamePrice extends StatelessWidget {
  final menuName;
  final price;

  const MenuOptionNamePrice({
    required this.menuName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              menuName,
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            Text(
              price,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class GreyBlank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
      child: Container(
        color: Colors.grey[100],
      ),
    );
  }
}
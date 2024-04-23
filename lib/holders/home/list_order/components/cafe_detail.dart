import 'package:flutter/material.dart';
import 'package:pathorder_app/models/cafe.dart';

class CafeDetail extends StatelessWidget {
  final Cafe cafe;

  const CafeDetail({super.key, required this.cafe});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          cafe.cafeName,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 4,
        ),
        Text(cafe.like)
      ],
    );
  }
}

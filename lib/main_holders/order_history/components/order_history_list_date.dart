import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderHistoryListDate extends StatelessWidget {
  const OrderHistoryListDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '28일 20:15 가져갈게요',
      style: TextStyle(fontSize: 14, color: Colors.grey),
    );
  }
}
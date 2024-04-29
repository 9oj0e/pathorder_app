import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderHistoryListDate extends StatelessWidget {
  final datetime;

  const OrderHistoryListDate({required this.datetime});


  @override
  Widget build(BuildContext context) {
    return Text(
      '${datetime} 가져갈게요',
      style: TextStyle(fontSize: 14, color: Colors.grey),
    );
  }
}
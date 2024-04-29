import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderHistoryListPay extends StatelessWidget {
  const OrderHistoryListPay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "결제 금액",
          style: TextStyle(
              fontSize: 17, color: Colors.deepOrangeAccent),
        ),
        SizedBox(
          width: 18.8,
        ),
        Text(
          "3,500원 |",
          style: TextStyle(
              fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Text(
          " 카카오페이 결제",
          style: TextStyle(fontSize: 13),
        ),
      ],
    );
  }
}
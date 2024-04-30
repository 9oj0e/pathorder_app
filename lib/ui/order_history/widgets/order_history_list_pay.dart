import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderHistoryListPay extends StatelessWidget {
  final price;
  final paymentMethod;

  const OrderHistoryListPay({required this.price, required this.paymentMethod});

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
          "${price}원",
          style: TextStyle(
              fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Text(
          " | ",
          style: TextStyle(
              fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Text(
          "${paymentMethod} 결제",
          style: TextStyle(fontSize: 13),
        ),
      ],
    );
  }
}
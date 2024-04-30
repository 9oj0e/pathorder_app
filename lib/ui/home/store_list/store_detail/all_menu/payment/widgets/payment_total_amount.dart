import 'package:flutter/material.dart';

class PaymentTotalAmount extends StatelessWidget {
  const PaymentTotalAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '총 주문 금액',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                '주문 금액',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Spacer(),
              Text('4,000원'),
            ],
          ),
          SizedBox(height: 3),
          Container(
            height: 0.5,
            color: Colors.grey[300],
            width: double.infinity,
          ),
          SizedBox(height: 3),
          Row(
            children: [
              Text('최종 결제 금액'),
              Spacer(),
              Text(
                '4,000원',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}

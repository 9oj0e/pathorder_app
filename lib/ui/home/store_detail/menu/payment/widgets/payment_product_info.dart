import 'package:flutter/material.dart';

import 'payment_menu_count.dart';

class PaymentProductInfo extends StatelessWidget {
  const PaymentProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '주문 상품정보',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('캐모마일 릴렉싱'), Text('4,000원')],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ice',
                  style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                ),
                PaymentMenuCount(),
              ],
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.grey[400],
              height: 0.5,
            )
          ],
        ),
      ),
    );
  }
}

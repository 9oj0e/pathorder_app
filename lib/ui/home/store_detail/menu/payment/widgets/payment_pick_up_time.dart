import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/widgets/payment_time_buttons.dart';

class PaymentPickUpTime extends StatelessWidget {
  const PaymentPickUpTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              '예상 수령 시간',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            PaymentTimeButtons()
          ],
        ),
      ),
    );
  }
}

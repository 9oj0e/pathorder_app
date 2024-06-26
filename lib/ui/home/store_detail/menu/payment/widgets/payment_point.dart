import 'package:flutter/material.dart';

class PaymentPoint extends StatelessWidget {
  const PaymentPoint({super.key});

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
              '포인트',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Text(
                  '보유 포인트 0',
                  style: TextStyle(fontSize: 12),
                ),
                Spacer(),
                Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.transparent,
                      )),
                  child: InkWell(
                    onTap: () {},
                    child: Center(
                        child: Text(
                      '모두 사용',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                    )),
                  ),
                ),
              ],
            ),
            // Text(
            //   "P",
            //   style: TextStyle(
            //       color: Colors.blue,
            //       fontWeight: FontWeight.w600,
            //       fontSize: 16),
            // ),
          ],
        ),
      ),
    );
  }
}

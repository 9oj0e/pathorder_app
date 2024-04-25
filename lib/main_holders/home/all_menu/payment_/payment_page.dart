import 'package:flutter/material.dart';

import 'components/payment_page_app_bar.dart';
import 'components/product_info.dart';
import 'components/store_location.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PaymentPageAppBar(),
      body: Column(
        children: [
          StoreLocation(),
          ProductInfo(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          height: 80,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color(0xFFFF7414)), // Adjust button color
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(5.0), // Adjust button corners
                ),
              ),
            ),
            child: Text(
              '결제',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

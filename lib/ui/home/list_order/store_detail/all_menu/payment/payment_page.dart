import 'package:flutter/material.dart';

import 'widgets/payment_body.dart';
import 'widgets/payment_bottom_app_bar.dart';
import 'widgets/payment_page_app_bar.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PaymentPageAppBar(),
      body: PaymentBody(),
      bottomNavigationBar: PaymentBottomAppBar(),
    );
  }
}

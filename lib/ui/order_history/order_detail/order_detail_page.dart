import 'package:flutter/material.dart';

import '../../widgets/back_app_bar.dart';
import 'widgets/order_detail_body.dart';

class OrderDetailPage extends StatelessWidget {
  const OrderDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(title: ''),
      backgroundColor: Colors.white,
      body: OrderDetailBody(),
    );
  }
}

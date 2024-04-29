import 'package:flutter/material.dart';
import 'package:pathorder_app/components/back_app_bar.dart';

import 'components/order_detail_body.dart';

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

import 'package:flutter/material.dart';

import 'order_detail_amount.dart';
import 'order_detail_info.dart';
import 'order_detail_title.dart';

class OrderDetailBody extends StatelessWidget {
  const OrderDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      OrderDetailTitle(),
      OrderDetailInfo(),
      OrderDetailAmount(),
    ]);
  }
}

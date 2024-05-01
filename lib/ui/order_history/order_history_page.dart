import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/order_history/widgets/order_history_body.dart';

import 'widgets/order_history_appbar.dart';

void main() {
  runApp(const MaterialApp(
    home: OrderHistoryPage(),
  ));
}

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xD7EAEAEA),
      appBar: OrderHistoryAppBar(),
      body: OrderHistoryBody(),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/order_date_select.dart';
import 'components/order_history_appbar.dart';
import 'components/order_history_header.dart';
import 'components/order_history_list.dart';
import 'components/order_history_point.dart';

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
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OderHistoryHeader(),
                  SizedBox(height: 10),
                  OrderDateSelect(), // 날짜 선택
                  SizedBox(height: 10,),
                  OrderHistoryPoint(),
                ],
              ),
            ),
          ),
          OrderHistoryList()
        ],
      ),
    );
  }
}









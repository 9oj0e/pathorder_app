import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'components/order_date_select.dart';



class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "주문내역",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(6),
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey[400],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "주문내역",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: CupertinoPickerExample(),
            ),
          ],
        ),
      ),
    );
  }
}
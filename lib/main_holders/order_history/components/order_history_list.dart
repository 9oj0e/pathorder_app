import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order_history_list_button.dart';
import 'order_history_list_divider.dart';
import 'order_history_list_cafe.dart';
import 'order_history_list_date.dart';
import 'order_history_list_menu.dart';
import 'order_history_list_pay.dart';

class OrderHistoryList extends StatelessWidget {
  const OrderHistoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: const Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrderHistoryListDate(),

              SizedBox(height: 10,),

              OderHistoryListCafe(),
              OrderHistoryListDivider(),
              OrderHistoryListMenu(),
              SizedBox(height: 10,),
              OrderHistoryListPay(),
              OrderHistoryListDivider(),
              OrderHistoryListButton()
            ],
          ),
        ),
      ),
    );
  }
}











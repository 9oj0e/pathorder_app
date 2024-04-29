import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order_history_list_button.dart';
import 'order_history_list_divider.dart';
import 'order_history_list_cafe.dart';
import 'order_history_list_date.dart';
import 'order_history_list_menu.dart';
import 'order_history_list_pay.dart';

class OrderHistoryList extends StatelessWidget {
  final datetime;
  final cafeName;
  final orderMenu;
  final price;
  final paymentMethod;

  const OrderHistoryList({

    required this.datetime,
    required this.cafeName,
    required this.orderMenu,
    required this.price,
    required this.paymentMethod,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrderHistoryListDate(datetime: datetime),
              SizedBox(height: 10,),
              OderHistoryListCafe(cafeName: cafeName),
              OrderHistoryListDivider(),
              OrderHistoryListMenu(orderMenu: orderMenu),
              SizedBox(height: 10,),
              OrderHistoryListPay(price: price, paymentMethod: paymentMethod),
              OrderHistoryListDivider(),
              OrderHistoryListButton(),
            ],
          ),
        ),
      ),
    );
  }
}











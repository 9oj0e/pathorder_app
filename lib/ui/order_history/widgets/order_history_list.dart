import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/order_history/data/order_list.dart';
import 'package:pathorder_app/ui/order_history/data/order_menu_list.dart';

import 'order_history_list_button.dart';
import 'order_history_list_divider.dart';
import 'order_history_list_cafe.dart';
import 'order_history_list_date.dart';
import 'order_history_list_menu.dart';
import 'order_history_list_pay.dart';

class OrderHistoryList extends StatelessWidget {
  final OrderList orderList;

  const OrderHistoryList({
    required this.orderList,
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
              OrderHistoryListDate(datetime: orderList.createdAt),
              SizedBox(height: 10),
              OderHistoryListCafe(cafeName: orderList.storeName),
              OrderHistoryListDivider(),
              for (var menu in orderList.orderMenuList)
                OrderHistoryListMenu(orderMenu: menu.name),
              SizedBox(height: 10),
              OrderHistoryListPay(
                  price: orderList.totalPrice, paymentMethod: "카카오페이"),
              OrderHistoryListDivider(),
              OrderHistoryListButton(),
            ],
          ),
        ),
      ),
    );
  }
}

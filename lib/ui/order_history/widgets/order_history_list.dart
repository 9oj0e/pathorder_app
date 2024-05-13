import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/order_history/data/order_list.dart';

import 'order_history_list_button.dart';
import 'order_history_list_cafe.dart';
import 'order_history_list_date.dart';
import 'order_history_list_divider.dart';
import 'order_history_list_menu.dart';
import 'order_history_list_pay.dart';

class OrderHistoryList extends StatelessWidget {
  final OrderList orderList;

  const OrderHistoryList(
   this.orderList,
  );

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
              OrderHistoryListMenu(orderMenu: orderList.orderMenuList[0].name),
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

class YourPage extends StatelessWidget {
  final List<OrderList> orderList;

  const YourPage({
    required this.orderList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orderList.length,
      itemBuilder: (BuildContext context, int index) {
        return OrderHistoryList(
          orderList[index],
        );
      },
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrderHistoryListDate(),
              SizedBox(
                height: 10,
              ),
              OderHistoryListCafe(),
              Divider(
                thickness: 2.5, // 두께 조절
                color: Colors.grey[200], // 색상 조절
                height: 30,
              ),
              OrderHistoryListMenu(),
              SizedBox(
                height: 10,
              ),
              OrderHistoryListPay(),
              Divider(
                thickness: 2.5, // 두께 조절
                color: Colors.grey[200], // 색상 조절
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                      "주문내역 보기",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}








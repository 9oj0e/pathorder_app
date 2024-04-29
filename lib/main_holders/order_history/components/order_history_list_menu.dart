import 'package:flutter/material.dart';

import '../order_detail/order_detail_page.dart';

class OrderHistoryListMenu extends StatelessWidget {
  final orderMenu;

  const OrderHistoryListMenu({required this.orderMenu});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "메뉴",
          style: TextStyle(fontSize: 17, color: Colors.deepOrangeAccent),
        ),
        SizedBox(
          width: 55,
        ),
        Expanded(
          child: Text(
            orderMenu,
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderDetailPage()),
              );
            },
            child: Text(
              "더보기",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}

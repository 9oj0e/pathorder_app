import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/order_history/detail/detail_page.dart';

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
                MaterialPageRoute(
                  // TODO: 박찬혁
                  builder: (context) => DetailPage(10),
                ),
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

import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/order_history/detail/detail_page.dart';

class OrderHistoryListMenu extends StatelessWidget {
  final orderMenu;
  int id;

  OrderHistoryListMenu({required this.orderMenu, required this.id});

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
            orderMenu.join(', '),
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(id),
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

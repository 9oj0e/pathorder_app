import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderHistoryListMenu extends StatelessWidget {
  const OrderHistoryListMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "메뉴",
          style: TextStyle(
              fontSize: 17, color: Colors.deepOrangeAccent),
        ),
        SizedBox(
          width: 55,
        ),
        Expanded(
          child: Text(
            "블루베리라떼",
            style: TextStyle(
                fontSize: 19, fontWeight: FontWeight.bold),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "더보기",
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
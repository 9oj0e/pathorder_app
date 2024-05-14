import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderHistoryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OrderHistoryAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
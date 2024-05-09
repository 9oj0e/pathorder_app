import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  final storeName;

  PaymentPageAppBar(this.storeName);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          CupertinoIcons.xmark,
          size: 18,
        ),
      ),
      title: Text(
        // TODO: 카페이름 불러오기
        '${storeName}',
        style: TextStyle(fontSize: 16),
      ),
      centerTitle: true,
    );
  }
}

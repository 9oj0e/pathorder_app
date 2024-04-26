import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentPageAppBar extends StatelessWidget implements PreferredSizeWidget {
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
        '컴포즈커피 서면학원점',
        style: TextStyle(fontSize: 16),
      ),
      centerTitle: true,
    );
  }
}

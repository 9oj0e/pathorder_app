import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pathorder_app/_core/constants/move.dart';

class CustomXAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  CustomXAppBar({required this.title});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            Move.mainHolder, // '/main' 화면으로 이동

            ModalRoute.withName(Move.home), // 'home' 화면까지 스택 제거
          );
        },
        icon: Icon(
          CupertinoIcons.xmark,
          size: 18,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
      centerTitle: true,
    );
  }
}

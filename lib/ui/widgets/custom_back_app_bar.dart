import 'package:flutter/material.dart';

class CustomBackAppBar extends StatelessWidget implements PreferredSizeWidget {
  final title;

  CustomBackAppBar({required this.title});

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
          Icons.arrow_back_ios,
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

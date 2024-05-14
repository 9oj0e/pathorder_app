import 'package:flutter/material.dart';

class LikeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.white,
      title: Text(
        '자주가요',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      centerTitle: false,
    );
  }
}

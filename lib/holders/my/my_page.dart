import 'package:flutter/material.dart';

import '../../models/icon_menu.dart';
import 'components/my_page_body.dart';
import 'components/my_page_header.dart';

class MyPage extends StatelessWidget {
  const MyPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '아임패써',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          MyPageHeader(),
          SizedBox(height: 8.0),
          MyPageBody(iconMenuList: iconMenu1, mainTitle: '마이 페이지'),
          SizedBox(height: 8.0),
          MyPageBody(iconMenuList: iconMenu2, mainTitle: '기타'),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'components/menu_list.dart';
import 'components/search_menu.dart';

class AllMenuPage extends StatelessWidget {
  const AllMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "가나다 커피 부산진구점"
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0), // 아래쪽 위젯의 선호 높이를 지정
          child: Container(
            alignment: Alignment.center,
            child: SearchMenu()
          )
        ),
      ),
      body: MenuList(),
    );
  }
}

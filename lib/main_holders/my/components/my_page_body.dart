import 'package:flutter/material.dart';

import '../../../models/icon_menu.dart';
import '../card/card_page.dart';
import '../login/my_login_page.dart';

class MyPageBody extends StatelessWidget {
  final List<IconMenu> iconMenuList;
  final String mainTitle;

  MyPageBody({required this.iconMenuList, required this.mainTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  mainTitle,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Column(
              children: List.generate(
                iconMenuList.length,
                (index) => _buildRowIconItem(
                  iconMenuList[index].title,
                  iconMenuList[index].iconData,
                  index,
                  mainTitle,
                  context,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRowIconItem(String title, IconData iconData, int index,
      String mainTitle, BuildContext context) {
    return Container(
      height: 50,
      child: InkWell(
        onTap: () {
          if (mainTitle == '마이 페이지') {
            if (index == 0) {
              print('내 리뷰 페이지 이동');
            }
            if (index == 1) {
              print('내 포인트 페이지 이동');
            }
            if (index == 2) {
              print('내 카드 페이지 이동');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CardPage(),
                ),
              );
            }
          } else if(mainTitle == '기타'){
            if(index == 4){
              print('로그아웃');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyLoginPage(),
                ),
              );
            }
          }
        },
        child: Row(
          children: [
            Icon(iconData, size: 17),
            const SizedBox(width: 20),
            Text(title),
          ],
        ),
      ),
    );
  }
}

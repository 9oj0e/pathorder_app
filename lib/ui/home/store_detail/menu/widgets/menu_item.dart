import 'package:flutter/material.dart';

import '../menu_option/widgets/menu_option_main.dart';

class MenuItem extends StatelessWidget {
  final menuNameKor;
  final menuNameEng;
  final price;
  final imgUrl;

  const MenuItem(
      {required this.menuNameKor,
      required this.menuNameEng,
      required this.price,
      required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      menuNameKor,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      menuNameEng,
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "${price}원",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Image.network(
                  imgUrl,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            SizedBox(height: 35), // 각 아이템 사이에 간격 추가
            Divider(
              color: Colors.grey[400], // 수평선의 색상 설정
              thickness: 1, // 수평선의 두께 설정
              height: 0, // 수평선의 높이 설정
            ),
          ],
        ),
      ),
      onTap: () {
        print("메뉴");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MenuOptionPage()),
        );
      },
    );
  }
}

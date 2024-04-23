import 'package:flutter/material.dart';

import '../../../../models/card_menu.dart';

class CardPageBody extends StatelessWidget {
  final List<CardMenu> cardMenuList;

  CardPageBody({required this.cardMenuList});

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
            Column(
              children: List.generate(
                cardMenuList.length,
                (index) => _buildRowCardItem(
                  cardMenuList[index].title,
                  cardMenuList[index].imageUrl,
                  index,
                  context,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              '패스 오더는 고객님의 소중한 개인정보를 어디에도 저장하지 않습니다.',
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
            Text(
              '따라서, 카드 정보가 구체적으로 나타나지 않는 점 양해 부탁드립니다.',
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('카드 추가'),
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    // 버튼이 눌렸을 때의 색상
                    return Colors.orangeAccent;
                  }
                  // 버튼이 눌리지 않았을 때의 색상
                  return Color(0xFFFF7414);
                }),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildRowCardItem(
      String title, String imageUrl, int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1),
      child: Container(
        height: 50,
        child: InkWell(
          onTap: () {},
          child: Row(
            children: [
              SizedBox(
                width: 100,
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}

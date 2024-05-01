import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/my/card/widgets/card_list.dart';

import '../../../../models/card_menu.dart';

class CardBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardList(cardMenuList: cardMenu1),
        SizedBox(height: 20),
        Column(
          children: [
            Text(
              '패스 오더는 고객님의 소중한 개인정보를 어디에도 저장하지 않습니다.',
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ],
        ),
        Text(
          '따라서, 카드 정보가 구체적으로 나타나지 않는 점 양해 부탁드립니다.',
          style: TextStyle(fontSize: 10, color: Colors.grey),
        ),
      ],
    );
  }
}

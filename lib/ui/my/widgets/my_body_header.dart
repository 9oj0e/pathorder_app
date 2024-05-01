import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../profile/profile_page.dart';

class MyBodyHeader extends StatelessWidget {
  const MyBodyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(
                  "https://picsum.photos/id/1/50/50",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 8),
              Text('홍길동'),
              Spacer(),
              // 수정 버튼 클릭시 수정 페이지 이동
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.square_pencil,
                      size: 16,
                    ),
                    Text(
                      '수정',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8)
            ],
          ),
          SizedBox(height: 16),
          InkWell(
            onTap: () {
              // TODO : 패스머니 클릭 시 패스 머니 잔액 으로 이동 구현 해야함
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFD4D5DD), width: 1.0),
                borderRadius: BorderRadius.circular(6.0),
              ),
              height: 60,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    CupertinoIcons.money_dollar_circle_fill,
                    color: Colors.redAccent,
                  ),
                  Text('패스머니'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

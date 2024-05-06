import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBannerIcons extends StatelessWidget {
  const HomeBannerIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _topButtons("전화주문", CupertinoIcons.phone),
          _topButtons("포인트", CupertinoIcons.money_dollar_circle),
          _topButtons("알림", CupertinoIcons.bell),
          _topButtons("적립마켓", CupertinoIcons.house),
          _topButtons("선물하기", CupertinoIcons.gift),
        ],
      ),
    );
  }

  Container _topButtons(String title, IconData iconData) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            child: InkWell(
              child: Icon(
                iconData,
              ),
              onTap: () {
                // TODO: 이동 페이지 연결
              },
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(title),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'components/nearby_cafe.dart';
import 'components/reviews_good.dart';

class ListOrderPage extends StatelessWidget {
  const ListOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
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
            ),
          ),
          GreyBlank(),
          NearbyCafe(),
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

class GreyBlank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 10,
        child: Container(
          color: Colors.grey[100],
        ),
      ),
    );
  }
}

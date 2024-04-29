import 'package:flutter/material.dart';

import '../../../../components/dotted_line.dart';

class OrderDetailTitle extends StatelessWidget {
  const OrderDetailTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '하이오커피 동아대점',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '주문 상세내역',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                '주문번호 : ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('3'),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Text(
                '결제정보 : ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('카카오페이 결제'),
              SizedBox(width: 5),
              Text(
                'ㅣ',
                style: TextStyle(color: Colors.grey[300]),
              ),
              SizedBox(width: 5),
              Text('2022.05.28 20:15'),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Text(
                '전화번호 : ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('010-****-0326'),
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 20,
            child: Center(
              child: Container(
                width: double.infinity,
                child: DottedLine(
                  color: Colors.black,
                  strokeWidth: 1.0,
                  gap: 5.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

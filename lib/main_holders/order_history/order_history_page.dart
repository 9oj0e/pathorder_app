import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/order_date_select.dart';

void main() {
  runApp(const MaterialApp(
    home: OrderHistoryPage(),
  ));
}

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xD7EAEAEA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "주문내역",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(6),
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey[400],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "주문내역",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  OrderDateSelect(), // 날짜 선택
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "적립 포인트",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: Color(0xD7EAEAEA), width: 40),
                        ),
                      ),
                      Positioned(
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '큐티와이님의 포인트',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Stack(children: [
                                Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        width: 73,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                ),
                                Positioned.fill(
                                  child: Center(
                                    child: Text(
                                      "1000P 사용 가능",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                  ),
                                )
                              ])
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '28일 20:15 가져갈게요',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "하이오커피 서면점",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(CupertinoIcons.right_chevron)
                      ],
                    ),
                    Divider(
                      thickness: 2.5, // 두께 조절
                      color: Colors.grey[200], // 색상 조절
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "메뉴",
                          style: TextStyle(
                              fontSize: 17, color: Colors.deepOrangeAccent),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Expanded(
                          child: Text(
                            "블루베리라떼",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "더보기",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "결제 금액",
                          style: TextStyle(
                              fontSize: 17, color: Colors.deepOrangeAccent),
                        ),
                        SizedBox(
                          width: 18.8,
                        ),
                        Text(
                          "3,500원 |",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " 카카오페이 결제",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2.5, // 두께 조절
                      color: Colors.grey[200], // 색상 조절
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        "주문내역 보기",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      )),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

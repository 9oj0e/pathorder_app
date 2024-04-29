import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/order_date_select.dart';
import 'components/order_history_appbar.dart';
import 'components/order_history_header.dart';
import 'components/order_history_list.dart';
import 'components/order_history_point.dart';

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
      appBar: OrderHistoryAppBar(),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OrderHistoryHeader(),
                  SizedBox(height: 10),
                  OrderDateSelect(), // 날짜 선택
                  SizedBox(height: 10,),
                  OrderHistoryPoint(),
                ],
              ),
            ),
          ),
          OrderHistoryList(datetime: "28일 08:45", cafeName: "하이오커피 서면점", orderMenu: "블루베리라떼", price: 3500, paymentMethod: "카카오페이",), // 주문내역 리스트
          OrderHistoryList(datetime: "27일 20:15", cafeName: "카페 이떼 서면점", orderMenu: "아샷추, 아메리카노", price: 7000, paymentMethod: "네이버페이",), // 주문내역 리스트
          OrderHistoryList(datetime: "10일 15:03", cafeName: "오리진 커피 서면점", orderMenu: "초코쿠키, 아메리카노", price: 5500, paymentMethod: "패스머니",), // 주문내역 리스트
          OrderHistoryList(datetime: "03일 18:57", cafeName: "컴포즈 서면점", orderMenu: "감자빵, 아메리카노", price: 6800, paymentMethod: "토스머니",), // 주문내역 리스트
          OrderHistoryList(datetime: "03일 18:57", cafeName: "메가커피 서면점", orderMenu: "아메리카노", price: 2000, paymentMethod: "토스머니",), // 주문내역 리스트
          // OrderHistoryList()
        ],
      ),
    );
  }
}










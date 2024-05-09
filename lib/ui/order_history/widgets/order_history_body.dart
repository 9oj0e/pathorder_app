import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/ui/order_history/order_history_page_viewmodel.dart';
import 'package:pathorder_app/ui/order_history/widgets/order_history_date_select_app.dart';
import 'package:pathorder_app/ui/order_history/widgets/order_history_header.dart';
import 'package:pathorder_app/ui/order_history/widgets/order_history_list.dart';
import 'package:pathorder_app/ui/order_history/widgets/order_history_point.dart';

class OrderHistoryBody extends ConsumerWidget {
  const OrderHistoryBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    OrderHistoryModel? model = ref.watch(OrderHistoryProvider);

    return ListView(
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
                OrderDateSelectApp(), // 날짜 선택
                SizedBox(
                  height: 10,
                ),
                OrderHistoryPoint(),
              ],
            ),
          ),
        ),
        ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: 1,
          itemBuilder: (context, index) {
            return OrderHistoryList(
              datetime: model!.order.createdAt,
              cafeName: model.order.storeName,
              orderMenu: model.order.orderMenus,
              price: model.order.totalPrice,
              paymentMethod: "카카오페이",

            );
          },
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
        ),
        // OrderHistoryList(
        //   datetime: "28일 08:45",
        //   cafeName: "하이오커피 서면점",
        //   orderMenu: "블루베리라떼",
        //   price: 3500,
        //   paymentMethod: "카카오페이",
        // ), // 주문내역 리스트
        // OrderHistoryList(
        //   datetime: "27일 20:15",
        //   cafeName: "카페 이떼 서면점",
        //   orderMenu: "아샷추, 아메리카노",
        //   price: 7000,
        //   paymentMethod: "네이버페이",
        // ), // 주문내역 리스트
        // OrderHistoryList(
        //   datetime: "10일 15:03",
        //   cafeName: "오리진 커피 서면점",
        //   orderMenu: "초코쿠키, 아메리카노",
        //   price: 5500,
        //   paymentMethod: "패스머니",
        // ), // 주문내역 리스트
        // OrderHistoryList(
        //   datetime: "03일 18:57",
        //   cafeName: "컴포즈 서면점",
        //   orderMenu: "감자빵, 아메리카노",
        //   price: 6800,
        //   paymentMethod: "토스머니",
        // ), // 주문내역 리스트
        // OrderHistoryList(
        //   datetime: "03일 18:57",
        //   cafeName: "메가커피 서면점",
        //   orderMenu: "아메리카노",
        //   price: 2000,
        //   paymentMethod: "토스머니",
        // ), // 주문내역 리스트
        // // OrderHistoryList()
      ],
    );
  }
}

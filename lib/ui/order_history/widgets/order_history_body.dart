import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/ui/order_history/order_history_page_viewmodel.dart';
import 'package:pathorder_app/ui/order_history/widgets/order_history_date_select_app.dart';
import 'package:pathorder_app/ui/order_history/widgets/order_history_header.dart';
import 'package:pathorder_app/ui/order_history/widgets/order_history_list.dart';
import 'package:pathorder_app/ui/order_history/widgets/order_history_point.dart';

class OrderHistoryBody extends ConsumerWidget {
  const OrderHistoryBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final OrderHistoryModel? model = ref.watch(OrderHistoryProvider);
    return RefreshIndicator(
      onRefresh: () async {
        await ref.read(OrderHistoryProvider.notifier).notifyInit();
      },
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(height: 10),
                    OrderHistoryPoint(),
                  ],
                ),
              ),
            ),
            model == null
                ? Container(
                    width: double.infinity,
                    height: 330,
                    child: Center(
                      child: Text("주문내역이 없습니다.", style: TextStyle(
                        fontSize: 15
                      ),),
                    ),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: model.orderList.length,
                    itemBuilder: (context, index) {
                      return OrderHistoryList(model.orderList[index]);
                    },
                  ),
          ],
        ),
      ),
    );
  }
}

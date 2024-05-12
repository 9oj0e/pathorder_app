import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/repositories/order_repository.dart';
import 'package:pathorder_app/ui/order_history/data/order_list.dart';

import '../../../data/dtos/response_dto.dart';
import '../../../data/store/session_store.dart';
import '../../../main.dart';

// 창고 데이터
class OrderHistoryModel {
  List<OrderList> orderList;

  OrderHistoryModel(this.orderList);
}

// 창고
class OrderHistoryViewModel extends StateNotifier<OrderHistoryModel?> {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  OrderHistoryViewModel(super.state, this.ref);

  Future<void> notifyInit() async {
    SessionStore sessionStore = ref.read(sessionProvider);
    String jwt = sessionStore.accessToken!;

    ResponseDTO responseDTO =
        await OrderRepository().fetchOrderHistory(sessionStore.user!.id, jwt);

    print("주문내역 뷰모델 : ${responseDTO.status}");
    if (responseDTO.status == 200) {
      state = responseDTO.response;
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
          SnackBar(content: Text("주문 내역 보기 실패 : ${responseDTO.errorMessage}")));
    }
  }
}

// 창고 관리자
final OrderHistoryProvider =
    StateNotifierProvider<OrderHistoryViewModel, OrderHistoryModel?>((ref) {
  return OrderHistoryViewModel(null, ref)..notifyInit();
});

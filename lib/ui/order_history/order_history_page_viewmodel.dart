import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/user_request.dart';
import 'package:pathorder_app/data/models/order/order.dart';
import 'package:pathorder_app/data/models/order/order_menu.dart';
import 'package:pathorder_app/data/models/order/order_menu_option.dart';
import 'package:pathorder_app/data/models/user.dart';
import 'package:pathorder_app/data/repositories/order_repository.dart';
import '../../../data/dtos/response_dto.dart';
import '../../../data/repositories/user_repository.dart';
import '../../../data/store/session_store.dart';
import '../../../main.dart';

// 창고 데이터
class OrderHistoryModel {
  Order order;
  // List<OrderMenu> orderMenus;
  // List<OrderMenuOption> orderMenuOptions;

  OrderHistoryModel(this.order);
}

// 창고
class OrderHistoryViewModel extends StateNotifier<OrderHistoryModel?> {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  OrderHistoryViewModel(super.state, this.ref);

  Future<void> notifyInit() async {
    SessionStore sessionStore = ref.read(sessionProvider);
    String jwt = sessionStore.accessToken!;

    ResponseDTO responseDTO = await OrderRepository().fetchOrderHistory(
        sessionStore.user!.id, jwt);

    print("뷰모델 : ${responseDTO.status}");
    if (responseDTO.status == 200) {
      state = OrderHistoryModel(responseDTO.response,);
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
          SnackBar(
              content: Text("주문 내역 보기 실패 : ${responseDTO.errorMessage}")));
    }
  }
}

// 창고 관리자
final OrderHistoryProvider =
StateNotifierProvider<OrderHistoryViewModel, OrderHistoryModel?>((ref) {
  return OrderHistoryViewModel(null, ref)
    ..notifyInit();
});
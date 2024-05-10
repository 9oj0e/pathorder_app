import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/order_request.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/repositories/order_repository.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/main.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/data/payment_header_data.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/data/payment_list_data.dart';

class PaymentModel {
  PaymentHeaderData paymentHeader;
  List<PaymentListData> paymentList;

  PaymentModel({required this.paymentHeader, required this.paymentList});
}

class PaymentViewModel extends StateNotifier<PaymentModel?> {
  final mContext = navigatorKey.currentContext;
  Ref ref;

  PaymentViewModel(super.state, this.ref);

  Future<void> notifyAdd(OrderReqDTO reqDTO) async {
    // 통신하기
    SessionUser sessionUser = ref.read(sessionProvider);
    ResponseDTO responseDTO = await OrderRepository()
        .fetchSaveOrder(sessionUser.accessToken!, reqDTO, sessionUser.user!.id);
    // 상태값 갱신
    if (responseDTO.status == 200) {
      state = responseDTO.response;
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
          SnackBar(content: Text("주문 실패 : ${responseDTO.errorMessage}")));
    }
  }

  notifyInit() {}
}

final paymentProvider =
    StateNotifierProvider<PaymentViewModel, PaymentModel?>((ref) {
  return PaymentViewModel(null, ref)..notifyInit();
});

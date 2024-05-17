import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/repositories/order_repository.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/main.dart';
import 'package:pathorder_app/ui/order_history/detail/data/order_detail_data.dart';
import 'package:pathorder_app/ui/order_history/detail/data/order_detail_list_data.dart';

// 창고 데이터
class DetailPageModel {
  OrderDetailData orderDetailData;

  DetailPageModel({required this.orderDetailData});
}

// 창고
class DetailPageViewModel extends StateNotifier<DetailPageModel?> {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  DetailPageViewModel(super.state, this.ref);

  Future<void> notifyInit(List<int> ids) async {
    SessionStore sessionStore = ref.read(sessionProvider);
    String jwt = sessionStore.accessToken!;
    ResponseDTO responseDTO =
        await OrderRepository().fetchDetailOrder(jwt, ids[0], ids[1]);
    print('아 진짜 짜증나네');
    if (responseDTO.status == 200) {
      state = responseDTO.response;
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
          SnackBar(content: Text("스토어 보기 실패 : ${responseDTO.errorMessage}")));
    }
  }
}

// 창고 관리자
final detailPageProvider = StateNotifierProvider.family<DetailPageViewModel,
    DetailPageModel?, List<int>>((ref, ids) {
  return DetailPageViewModel(null, ref)..notifyInit(ids);
});

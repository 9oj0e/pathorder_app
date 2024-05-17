import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/like_request.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/repositories/like_repository.dart';
import 'package:pathorder_app/data/repositories/store_repository.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/main.dart';
import 'package:pathorder_app/ui/home/store_detail/data/store_detail_review_data.dart';

class StoreDetailReviewModel {
  List<StoreDetailReviewData> reviewList;

  StoreDetailModel(this.reviewList);
}

class StoreDetailReviewViewModel
    extends StateNotifier<StoreDetailReviewModel?> {
  final mContext = navigatorKey.currentContext;
  Ref ref;

  StoreDetailReviewViewModel(super.state, this.ref);

  Future<void> notifyInit(int storeId) async {
    // 통신하기
    SessionStore sessionStore = ref.read(sessionProvider);
    ResponseDTO responseDTO = await StoreRepository()
        .fetchStoreDetail(sessionStore.accessToken!, storeId);

    // 상태값 갱신 (새로 new해서 넣어줘야 한다)
    state = StoreDetailReviewModel(responseDTO.response);
  }

}

// 화면이 stack 에서 제거될때, 창고도 함께 제거되게 하기 (autoDispose)
final storeDetailReviewProvider = StateNotifierProvider.autoDispose
    .family<StoreDetailReviewViewModel, StoreDetailReviewModel?, int>((ref,
    storeId) {
  return StoreDetailReviewViewModel(null, ref)
    ..notifyInit(storeId);
});

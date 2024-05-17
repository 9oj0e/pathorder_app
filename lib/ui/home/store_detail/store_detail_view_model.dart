import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/like_request.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/repositories/like_repository.dart';
import 'package:pathorder_app/data/repositories/store_repository.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/main.dart';
import 'package:pathorder_app/ui/home/store_detail/data/store_detail_data.dart';

class StoreDetailModel {
  StoreDetailData store;

  StoreDetailModel(this.store);
}

class StoreDetailViewModel extends StateNotifier<StoreDetailModel?> {
  final mContext = navigatorKey.currentContext;
  Ref ref;

  StoreDetailViewModel(super.state, this.ref);

  Future<void> notifyInit(int storeId) async {
    // 통신하기
    SessionStore sessionStore = ref.read(sessionProvider);
    ResponseDTO responseDTO = await StoreRepository()
        .fetchStoreDetail(sessionStore.accessToken!, storeId);

    // 상태값 갱신 (새로 new해서 넣어줘야 한다)
    state = StoreDetailModel(responseDTO.response);
  }

  Future<void> notifyLikeDelete(int userId, int storeId) async {
    SessionStore sessionStore = ref.read(sessionProvider);
    String jwt = sessionStore.accessToken!;
    LikeReqDTO reqDTO = LikeReqDTO(userId, storeId);
    ResponseDTO responseDTO =
        await LikeRepository().fetchLikeDelete(jwt, reqDTO);

    if (responseDTO.status == 200) {
      // 상태 변경
      state!.store.liked = false;
      state = StoreDetailModel(state!.store);
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
        SnackBar(content: Text("하트 취소 실패 : ${responseDTO.errorMessage}")),
      );
    }
  }

  Future<void> notifyLikePost(int userId, int storeId) async {
    SessionStore sessionStore = ref.read(sessionProvider);
    String jwt = sessionStore.accessToken!;
    LikeReqDTO reqDTO = LikeReqDTO(userId, storeId);
    ResponseDTO responseDTO = await LikeRepository().fetchLikePost(jwt, reqDTO);

    if (responseDTO.status == 200) {
      // 상태 변경
      state!.store.liked = true;
      state = StoreDetailModel(state!.store);
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
        SnackBar(content: Text("좋아요 실패 : ${responseDTO.errorMessage}")),
      );
    }
  }
}

// 화면이 stack 에서 제거될때, 창고도 함께 제거되게 하기 (autoDispose)
final storeDetailProvider = StateNotifierProvider.autoDispose
    .family<StoreDetailViewModel, StoreDetailModel?, int>((ref, storeId) {
  return StoreDetailViewModel(null, ref)..notifyInit(storeId);
});

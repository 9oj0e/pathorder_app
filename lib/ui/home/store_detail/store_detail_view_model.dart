import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/models/store.dart';
import 'package:pathorder_app/data/repositories/store_repository.dart';
import 'package:pathorder_app/data/store/session_store.dart';

class StoreDetailModel {
  Store store;

  StoreDetailModel(this.store);
}

class StoreDetailViewModel extends StateNotifier<StoreDetailModel?> {
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
}

// 화면이 stack 에서 제거될때, 창고도 함께 제거되게 하기 (autoDispose)
final storeDetailProvider = StateNotifierProvider.autoDispose
    .family<StoreDetailViewModel, StoreDetailModel?, int>((ref, storeId) {
  return StoreDetailViewModel(null, ref)..notifyInit(storeId);
});

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/models/store.dart';
import 'package:pathorder_app/data/repositories/store_repository.dart';
import 'package:pathorder_app/data/store/session_store.dart';

class MenuModel {
  Store store;

  MenuModel(this.store);
}

class MenuViewModel extends StateNotifier<MenuModel?> {
  Ref ref;

  MenuViewModel(super.state, this.ref);

  Future<void> notifyInit(int storeId) async {
    // 통신하기
    SessionStore sessionStore = ref.read(sessionProvider);
    ResponseDTO responseDTO = await StoreRepository()
        .fetchStoreMenuList(sessionStore.accessToken!, storeId);

    // 상태값 갱신 (새로 new해서 넣어줘야 한다)
    state = MenuModel(responseDTO.response);
  }

  Future<void> notifySearch(
      int storeId, Map<String, dynamic> queryParams) async {
    // 통신하기
    SessionStore sessionStore = ref.read(sessionProvider);
    ResponseDTO responseDTO = await StoreRepository().fetchStoreSearchMenuList(
        sessionStore.accessToken!, storeId, queryParams);

    // 상태값 갱신 (새로 new해서 넣어줘야 한다)
    state = MenuModel(responseDTO.response);
  }
}

// 화면이 stack 에서 제거될때, 창고도 함께 제거되게 하기 (autoDispose)
final menuProvider = StateNotifierProvider.autoDispose
    .family<MenuViewModel, MenuModel?, int>((ref, storeId) {
  return MenuViewModel(null, ref)..notifyInit(storeId);
});

final menuSearchProvider = StateProvider<String>((ref) => '');

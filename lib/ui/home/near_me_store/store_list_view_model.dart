import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/models/store.dart';
import 'package:pathorder_app/data/repositories/store_repository.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/main.dart';

// 창고 데이터
class StoreListModel {
  List<Store> stores;

  StoreListModel(this.stores);
}

// 창고
class StoreListViewModel extends StateNotifier<StoreListModel?> {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  StoreListViewModel(super.state, this.ref);

  Future<void> notifyInit() async {
    print('여기 안들어오는건가');
    SessionStore sessionStore = ref.read(sessionProvider);
    String jwt = sessionStore.accessToken!;
    print('${jwt}');
    print('아아아아아아아아아아아아아아아아아아아아아아아아아아');
    ResponseDTO responseDTO = await StoreRepository().fetchStoreList(jwt);

    if (responseDTO.status == 200) {
      state = responseDTO.response;
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
          SnackBar(content: Text("스토어 보기 실패 : ${responseDTO.errorMessage}")));
    }
  }
}

// 창고 관리자
final storeListProvider =
    StateNotifierProvider<StoreListViewModel, StoreListModel?>((ref) {
  return StoreListViewModel(null, ref)..notifyInit();
});

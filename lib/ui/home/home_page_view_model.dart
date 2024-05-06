import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/models/store.dart';
import 'package:pathorder_app/data/repositories/store_repository.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/main.dart';

// 창고 데이터
class HomePageModel {
  List<Store> stores;

  HomePageModel(this.stores);
}

// 창고
class HomePageViewModel extends StateNotifier<HomePageModel?> {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  HomePageViewModel(super.state, this.ref);

  Future<void> notifyInit() async {
    print('여기 안들어오는건가');
    SessionStore sessionStore = ref.read(sessionProvider);
    String jwt = sessionStore.accessToken!;
    print('${jwt}');
    print('아아아아아아아아아아아아아아아아아아아아아아아아아아');
    ResponseDTO responseDTO = await StoreRepository().fetchLittleStoreList(jwt);

    if (responseDTO.status == 200) {
      state = responseDTO.response;
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
          SnackBar(content: Text("스토어 보기 실패 : ${responseDTO.errorMessage}")));
    }
  }
}

// 창고 관리자
final homePageProvider =
    StateNotifierProvider<HomePageViewModel, HomePageModel?>((ref) {
  return HomePageViewModel(null, ref)..notifyInit();
});

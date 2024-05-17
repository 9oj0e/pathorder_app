import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/repositories/store_repository.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/main.dart';
import 'package:pathorder_app/ui/like/data/like_page_data.dart';

// 창고 데이터
class LikePageModel {
  List<LikePageData> likePageData;

  LikePageModel(this.likePageData);
}

// 창고
class LikePageViewModel extends StateNotifier<LikePageModel?> {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  LikePageViewModel(super.state, this.ref);

  Future<void> notifyInit() async {
    SessionStore sessionStore = ref.read(sessionProvider);
    int userId = sessionStore.user!.id;
    String jwt = sessionStore.accessToken!;
    ResponseDTO responseDTO =
        await StoreRepository().fetchStoreLikeList(jwt, userId);

    if (responseDTO.status == 200) {
      state = responseDTO.response;
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(
          content: Text("자주 가는 매장 보기 실패 : ${responseDTO.errorMessage}")));
    }
  }
}

// 창고 관리자
final likePageProvider =
    StateNotifierProvider.autoDispose<LikePageViewModel, LikePageModel?>((ref) {
  return LikePageViewModel(null, ref)..notifyInit();
});

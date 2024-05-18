import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/repositories/review_repository.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/main.dart';
import 'package:pathorder_app/ui/my/Review/data/my_detail_review_data.dart';

class MyDetailReviewModel {
  List<MyDetailReviewData> reviewList;

  MyDetailReviewModel(this.reviewList);
}

class MyDetailReviewViewModel extends StateNotifier<MyDetailReviewModel?> {
  final mContext = navigatorKey.currentContext;
  Ref ref;

  MyDetailReviewViewModel(super.state, this.ref);

  Future<void> notifyInit(int userId) async {
    // 통신하기
    SessionStore sessionStore = ref.read(sessionProvider);
    ResponseDTO responseDTO = await ReviewRepository()
        .myReviewList(sessionStore.accessToken!, sessionStore.user!.id);

    List<dynamic> temp = responseDTO.response["reviewList"];
    List<MyDetailReviewData> reviewList =
        temp.map((e) => MyDetailReviewData.fromJson(e)).toList();
    // 상태값 갱신 (새로 new해서 넣어줘야 한다)
    state = MyDetailReviewModel(reviewList);
  }
}

// 화면이 stack 에서 제거될때, 창고도 함께 제거되게 하기 (autoDispose)
final MyDetailReviewProvider = StateNotifierProvider.autoDispose
    .family<MyDetailReviewViewModel, MyDetailReviewModel?, int>((ref, userId) {
  return MyDetailReviewViewModel(null, ref)..notifyInit(userId);
});

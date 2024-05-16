import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/review_request.dart';
import 'package:pathorder_app/data/dtos/user_request.dart';
import 'package:pathorder_app/data/models/store.dart';
import 'package:pathorder_app/data/models/user.dart';
import 'package:pathorder_app/data/repositories/review_repository.dart';
import '../../../data/dtos/response_dto.dart';
import '../../../data/repositories/user_repository.dart';
import '../../../data/store/session_store.dart';
import '../../../main.dart';
import 'widgets/data/review.dart';

// 창고 데이터
class ReviewModel {
  Review review;

  ReviewModel(this.review);
}

// 창고
class ReviewViewModel extends StateNotifier<ReviewModel?> {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  ReviewViewModel(super.state, this.ref);

  Future<void> notifyInit(ReviewReqDTO reviewReqDTO) async {
    SessionStore sessionStore = ref.read(sessionProvider);
    String jwt = sessionStore.accessToken!;

    ResponseDTO responseDTO = await ReviewRepository().saveReview(
        1 ,reviewReqDTO, jwt);

    print("뷰모델 : ${responseDTO.status}");
    if (responseDTO.status == 200) {
      state = ReviewModel(responseDTO.response);
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
          SnackBar(
              content: Text("프로필 정보 보기 실패 : ${responseDTO.errorMessage}")));
    }
  }

}

// 창고 관리자
final ProfileDetailProvider =
StateNotifierProvider<ReviewViewModel, ReviewModel?>((ref) {
  return ReviewViewModel(null, ref)
    ..notifyInit();
});
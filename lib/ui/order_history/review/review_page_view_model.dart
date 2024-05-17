import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/review_request.dart';
import 'package:pathorder_app/data/repositories/order_repository.dart';
import 'package:pathorder_app/data/repositories/review_repository.dart';
import 'package:pathorder_app/ui/order_history/data/order_list.dart';

import '../../../data/dtos/response_dto.dart';
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

  Future<void> notifyInit(ReviewReqDTO reqDTO) async {
    SessionStore sessionStore = ref.read(sessionProvider);
    String jwt = sessionStore.accessToken!;

    ResponseDTO responseDTO =
    await ReviewRepository().saveReview(sessionStore.user!.id, reqDTO, jwt);

    print("리뷰 뷰모델 : ${responseDTO.status}");
    if (responseDTO.status == 200) {
      state = responseDTO.response;
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
          SnackBar(content: Text("리뷰 등록 실패 : ${responseDTO.errorMessage}")));
    }
  }
}

// 창고 관리자
final ReviewProvider =
StateNotifierProvider<ReviewViewModel, ReviewModel?>((ref) {
  return ReviewViewModel(null, ref);
});

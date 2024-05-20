import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/review_request.dart';
import 'package:pathorder_app/data/repositories/review_repository.dart';
import 'package:pathorder_app/ui/my/Review/review_page.dart';

import '../../../data/dtos/response_dto.dart';
import '../../../data/store/session_store.dart';
import '../../../main.dart';
import 'widgets/data/review.dart';

// 창고 데이터
class ReviewModel {
  Review review;
  String? image;

  ReviewModel({required this.review, this.image});
}

// 창고
class ReviewViewModel extends StateNotifier<ReviewModel?> {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  ReviewViewModel(super.state, this.ref);

  Future<void> notifyInitAdd(ReviewReqDTO reqDTO, int storeId) async {
    SessionStore sessionStore = ref.read(sessionProvider);
    String jwt = sessionStore.accessToken!;

    ResponseDTO responseDTO =
        await ReviewRepository().saveReview(storeId, reqDTO, jwt);

    print("매장 아이디 : ${storeId}");
    print("리뷰 뷰모델 : ${responseDTO.status}");
    if (responseDTO.status == 200) {
      Navigator.pushAndRemoveUntil(
        mContext!,
        MaterialPageRoute(
          builder: (context) => ReviewPage(),
          fullscreenDialog: true,
        ),
        (route) => true,
      );
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

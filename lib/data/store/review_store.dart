import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/order_request.dart';

class SessionReview {
  int? userId;
  int? storeId;
  String? content;
  String? encodedData;

  SessionReview();


  void setStoreId(value) {
    storeId = value;
  }

  void setContent(value) {
    content = value;
  }

  void setImgFilename(value) {
    encodedData = value;
  }

}

class ReviewStore extends SessionReview {}

final ReviewStoreProvider = StateProvider<ReviewStore>((ref) {
  return ReviewStore();
});

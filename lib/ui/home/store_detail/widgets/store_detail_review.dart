import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/ui/home/store_detail/store_detail_review_view_model.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_review_item.dart';
import 'package:pathorder_app/ui/widgets/custom_divider.dart';

class StoreDetailReview extends ConsumerWidget {
  int storeId;

  StoreDetailReview(this.storeId);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    StoreDetailReviewModel? model =
        ref.watch(storeDetailReviewProvider(storeId));
    if (model == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      if (model.reviewList.length == 0) {
        return Center(
          child: Text(
            '매장의 첫 리뷰를 작성해주세요!',
            style: TextStyle(color: Colors.grey),
          ),
        );
      } else {
        return ListView.separated(
          separatorBuilder: (context, index) => CustomDivider(),
          itemCount: model.reviewList.length,
          itemBuilder: (context, index) {
            return StoreDetailReviewItem(
              reviewList: model.reviewList[index],
            );
          },
        );
      }
    }
  }
}

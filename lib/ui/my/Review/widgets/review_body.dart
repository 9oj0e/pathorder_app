import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/ui/my/Review/my_detail_review%20_view_model.dart';
import 'package:pathorder_app/ui/my/Review/widgets/my_detail_review_item.dart';
import 'package:pathorder_app/ui/widgets/custom_divider.dart';

class ReviewBody extends ConsumerWidget {
  const ReviewBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SessionStore sessionStore = ref.read(sessionProvider);
    MyDetailReviewModel? model =
        ref.watch(MyDetailReviewProvider(sessionStore.user!.id));

    if (model == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          separatorBuilder: (context, index) => CustomDivider(),
          itemCount: model.reviewList.length,
          itemBuilder: (context, index) {
            return MyDetailReviewItem(
              reviewList: model.reviewList[index],
            );
          },
        ),
      );
    }
  }
}

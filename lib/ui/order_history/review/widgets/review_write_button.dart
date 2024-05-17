import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/review_request.dart';
import 'package:pathorder_app/data/store/review_store.dart';
import 'package:pathorder_app/ui/order_history/review/review_page_view_model.dart';

class ReviewWriteButton extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ReviewStore reviewStore = ref.watch(ReviewStoreProvider);
    // SessionStore sessionStore = ref.read(sessionProvider);

    return BottomAppBar(
      elevation: 0,
      height: 90,
      color: Colors.transparent, // 투명하게 해도 색이 안변하는거 같음
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.deepOrangeAccent,
        ),
        child: InkWell(
          splashColor: Colors.black,
          borderRadius: BorderRadius.circular(10.0),
          onTap: () {
            ReviewReqDTO reqDTO = ReviewReqDTO(
                content: reviewStore.content!,
                encodedData: reviewStore.encodedData);
            ref
                .watch(ReviewProvider.notifier)
                .notifyInitAdd(reqDTO, reviewStore.storeId!);
            print('작성하기 버튼이 눌렸습니다.');
          },
          child: Center(
            child: Text(
              "작성하기",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

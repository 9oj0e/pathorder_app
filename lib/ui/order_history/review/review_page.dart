import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/ui/order_history/order_history_page_viewmodel.dart';
import 'package:pathorder_app/ui/order_history/review/review_page_view_model.dart';

import '../../widgets/custom_back_app_bar.dart';
import 'widgets/review_body.dart';
import 'widgets/review_write_button.dart';

class ReviewPage extends ConsumerWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SessionStore sessionStore = ref.read(sessionProvider);
    // final ReviewModel? model = ref.read(ReviewProvider);
    // final OrderHistoryModel?

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomBackAppBar(title: '리뷰 작성'),
      body: ReviewBody(storeName: "오리진 커피", storeAddress: "서면서전로점"),
      bottomNavigationBar: ReviewWriteButton(), // TODO: 버튼 무효화 기능
    );
  }
}

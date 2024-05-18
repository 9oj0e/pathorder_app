import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/store/review_store.dart';

import '../../widgets/custom_back_app_bar.dart';
import 'widgets/review_body.dart';
import 'widgets/review_write_button.dart';

class ReviewPage extends ConsumerWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ReviewStore reviewStore = ref.watch(ReviewStoreProvider);
    // SessionStore sessionStore = ref.read(sessionProvider);
    // final ReviewModel? model = ref.read(ReviewProvider);
    // final OrderHistoryModel?

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomBackAppBar(title: '리뷰 작성'),
      body: ReviewBody(storeName: reviewStore.storeName),
      bottomNavigationBar: ReviewWriteButton(), // TODO: 버튼 무효화 기능
    );
  }
}

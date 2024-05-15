import 'package:flutter/material.dart';

import '../../widgets/custom_back_app_bar.dart';
import 'widgets/review_body.dart';
import 'widgets/review_write_button.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomBackAppBar(title: '리뷰 작성'),
      body: ReviewBody(storeName: "오리진 커피", storeAddress: "서면서전로점"),
      bottomNavigationBar: ReviewWriteButton(), // TODO: 버튼 무효화 기능
    );
  }
}

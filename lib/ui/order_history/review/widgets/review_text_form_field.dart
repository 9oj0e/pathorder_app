import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/store/review_store.dart';
import 'package:pathorder_app/ui/order_history/order_history_page_viewmodel.dart';

class ReviewTextFormField extends ConsumerWidget {
  final validator;

  const ReviewTextFormField({
    required this.validator,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int i = 0;
    Timer? timer;
    ReviewStore reviewStore = ref.read(ReviewStoreProvider);
    final OrderHistoryModel? model = ref.watch(orderHistoryProvider);

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: TextFormField(
          validator: validator,
          decoration: InputDecoration(
            hintStyle: TextStyle(
              color: Colors.black54,
              fontSize: 14, // 원하는 크기로 설정
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            border: InputBorder.none, // 밑줄 없애기
            hintText: '패써님의 리뷰가 다른 패써님의 음료선택에\n큰 도움이 되어요.',
          ),
          onChanged: (value) {
            // 사용자가 요청 사항 입력을 멈춘 후 1초 뒤에 이벤트가 발생하도록 한다. Duration과 같은 기능
            timer?.cancel();
            timer = Timer(Duration(seconds: 1), () {
              i++;
              // print('이벤트 발생 : ${i}');
              reviewStore.setContent(value);
            });
          },
          maxLines: 3, // 최대 세 줄까지 입력 가능
        ),
      ),
    );
  }
}

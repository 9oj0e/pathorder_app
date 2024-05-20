import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/store/review_store.dart';
import 'package:pathorder_app/ui/order_history/review/review_page.dart';

import '../review/order_review_state.dart';

class OrderHistoryListButton extends ConsumerWidget {
  int storeId;
  String storeName;
  int orderId;

  OrderHistoryListButton({required this.storeId, required this.storeName, required this.orderId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ReviewStore reviewStore = ref.watch(ReviewStoreProvider);
    final orderReviewState = ref.watch(orderReviewProviderFamily(orderId));

    if (!orderReviewState.isPosted){
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrangeAccent, // 버튼의 배경색
          shape: RoundedRectangleBorder(
            // 버튼의 모양을 변경하기 위해 사용
            borderRadius: BorderRadius.circular(10), // 원하는 모양으로 변경 가능
          ),
          fixedSize:
          Size(MediaQuery.of(context).size.width * 1, 55), // 버튼의 너비와 높이 설정
        ),
        child: Text(
          "리뷰 작성하기",
          style: TextStyle(
              color: Colors.white, // 버튼 텍스트 색상
              fontSize: 23, // 버튼 텍스트 크기
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          reviewStore.setStoreId(storeId);
          reviewStore.setStoreName(storeName);
          reviewStore.setOrderId(orderId);
          print("매장 ID : ${storeId}");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ReviewPage(),
            ),
          );
        },
      );

    } else {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey, // 버튼의 배경색
          shape: RoundedRectangleBorder(
            // 버튼의 모양을 변경하기 위해 사용
            borderRadius: BorderRadius.circular(10), // 원하는 모양으로 변경 가능
          ),
          fixedSize:
          Size(MediaQuery.of(context).size.width * 1, 55), // 버튼의 너비와 높이 설정
        ),
        child: Text(
          "리뷰 작성 완료",
          style: TextStyle(
              color: Colors.white, // 버튼 텍스트 색상
              fontSize: 23, // 버튼 텍스트 크기
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          print("리뷰 작성 완료한 주문");
        },
      );
    }

  }
}

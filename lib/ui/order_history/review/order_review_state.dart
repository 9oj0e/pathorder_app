import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrderReviewState {
  final bool isPosted;

  OrderReviewState({required this.isPosted});
}

class OrderReviewNotifier extends StateNotifier<OrderReviewState> {
  OrderReviewNotifier() : super(OrderReviewState(isPosted: false));

  void setIsPosted(bool value) {
    state = OrderReviewState(isPosted: value);
  }
}

final orderReviewProviderFamily = StateNotifierProvider.family<OrderReviewNotifier, OrderReviewState, int>((ref, orderId) {
  return OrderReviewNotifier();
});
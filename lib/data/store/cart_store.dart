import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/models/cart_item.dart';

class SessionCart {
  String? storeName;
  List<CartItem> cartList;

  SessionCart() : cartList = [];

  void addToCart(CartItem cartItem) {
    cartList.add(cartItem);
  }

  void removeToCart(CartItem cartItem) {
    cartList.remove(cartItem);
  }

  void clear() {
    cartList.clear();
  }

  int getTotalPrice() {
    int totalPrice = 0;
    for (var item in cartList) {
      totalPrice += item.price ?? 0;
    }
    return totalPrice;
  }
}

class CartStore extends SessionCart {}

final cartProvider = StateProvider<CartStore>((ref) {
  return CartStore();
});

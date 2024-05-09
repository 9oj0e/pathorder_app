import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/models/cart.dart';

class SessionCart {
  List<Cart> cartList;

  SessionCart() : cartList = [];

  void addToCart(Cart cartItem) {
    cartList.add(cartItem);
  }
}

class CartStore extends SessionCart {
  void saveCart(Cart cartItem) {
    addToCart(cartItem);
  }
}

final cartProvider = StateProvider<CartStore>((ref) {
  return CartStore();
});

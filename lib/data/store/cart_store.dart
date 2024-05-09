import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/models/cart_item.dart';

class SessionCart {
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
}

class CartStore extends SessionCart {
  void saveCart(CartItem cartItem) {
    addToCart(cartItem);
  }
}

final cartProvider = StateProvider<CartStore>((ref) {
  return CartStore();
});

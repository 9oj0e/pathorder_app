import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/order_request.dart';

class SessionCart {
  int? storeId;
  String? storeName;
  int? customerId;
  String? customerNickname;
  String? request;
  List<OrderMenuList> orderMenuList = [];

  SessionCart();
}

class CartStore extends SessionCart {
  void addToCart(OrderMenuList cartItem) {
    orderMenuList.add(cartItem);
  }

  void removeToCart(OrderMenuList cartItem) {
    orderMenuList.remove(cartItem);
  }

  void clear() {
    orderMenuList.clear();
  }

  void setStoreId(value) {
    storeId = value;
  }

  void setCustomerId(value) {
    customerId = value;
  }

  void setCustomerNickname(value) {
    customerNickname = value;
  }

  void setStoreName(value) {
    storeName = value;
  }

  void setRequest(value) {
    request = value;
  }

  void setRequestNull() {
    request = null;
  }

  int getTotalPrice() {
    int totalPrice = 0;

    for (var item in orderMenuList) {
      int optionsTotalPrice =
          item.orderMenuOptionList.fold(0, (sum, option) => sum + option.price);

      totalPrice += ((item.price + optionsTotalPrice) * item.qty) ?? 0;
    }
    return totalPrice;
  }
}

final cartProvider = StateProvider<CartStore>((ref) {
  return CartStore();
});

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/order_request.dart';
import 'package:pathorder_app/data/store/cart_store.dart';
import 'package:pathorder_app/data/store/session_store.dart';

class MenuOptionBottomAppBar extends ConsumerWidget {
  final price;

  MenuOptionBottomAppBar(this.price);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartStore cartStore = ref.read(cartProvider);
    SessionStore sessionStore = ref.watch(sessionProvider);
    print(sessionStore.menuOptionList);
    return BottomAppBar(
      // TODO : widgets
      height: 90,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.deepOrangeAccent,
        ),
        child: InkWell(
          splashColor: Colors.black,
          borderRadius: BorderRadius.circular(10.0),
          onTap: () {
            cartStore.addToCart(OrderMenuList(
                name: sessionStore.name!,
                price: sessionStore.price!,
                qty: sessionStore.qty!,
                orderMenuOptionList: List.from(sessionStore.menuOptionList)));
            // 수량 초기화
            sessionStore.qty = 1;
            Navigator.pop(context);
          },
          child: Center(
            child: Text(
              // TODO : @@원 담기
              "담기",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

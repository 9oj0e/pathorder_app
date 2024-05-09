import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/models/cart_item.dart';
import 'package:pathorder_app/data/store/cart_store.dart';
import 'package:pathorder_app/data/store/session_store.dart';

class MenuOptionBottomAppBar extends ConsumerWidget {
  final price;
  
  MenuOptionBottomAppBar(this.price);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartStore cartStore = ref.read(cartProvider);
    SessionStore sessionStore = ref.watch(sessionProvider);
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
            cartStore.addToCart(
                CartItem(name: sessionStore.name, price: sessionStore.price));
            Navigator.pop(context);
            // TODO: 담기버튼 눌리면 장바구니에 담겨야함
            print('담기 버튼이 눌렸습니다.');
          },
          child: Center(
            child: Text(
              "${price}원 담기",
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

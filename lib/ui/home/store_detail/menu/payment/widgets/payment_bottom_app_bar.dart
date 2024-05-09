import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/_core/constants/move.dart';
import 'package:pathorder_app/data/store/cart_store.dart';

class PaymentBottomAppBar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartStore cartStore = ref.watch(cartProvider);

    return BottomAppBar(
      height: 90,
      color: Colors.transparent, // 투명하게 해도 색이 안변하는거 같음
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.deepOrangeAccent,
        ),
        child: InkWell(
          splashColor: Colors.black,
          borderRadius: BorderRadius.circular(10.0),
          onTap: () {
            // TODO: 결제버튼 클릭
            cartStore.clear();
            Navigator.pushNamedAndRemoveUntil(
              context,
              Move.mainHolder, // '/main' 화면으로 이동
              
              ModalRoute.withName(Move.home), // 'home' 화면까지 스택 제거
            );
            print('결제 버튼이 눌렸습니다.');
          },
          child: Center(
            child: Text(
              "결제",
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

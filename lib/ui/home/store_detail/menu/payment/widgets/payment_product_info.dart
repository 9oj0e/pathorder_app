import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/store/cart_store.dart';

import 'payment_menu_count.dart';

class PaymentProductInfo extends ConsumerWidget {
  const PaymentProductInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartStore cartStore = ref.watch(cartProvider);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '주문 상품정보',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(), //내부 리스트뷰 스크롤 동작 비활성화
              itemCount: cartStore.cartList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${cartStore.cartList[index].name}'),
                        Text('${cartStore.cartList[index].price}원')
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ice 옵션 아직',
                          style:
                              TextStyle(fontSize: 12, color: Colors.grey[400]),
                        ),
                        PaymentMenuCount(),
                      ],
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.grey[400],
              height: 0.5,
            )
          ],
        ),
      ),
    );
  }
}

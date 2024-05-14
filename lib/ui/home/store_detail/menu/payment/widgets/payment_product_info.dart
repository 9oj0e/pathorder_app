import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/store/cart_store.dart';

import 'payment_menu_count.dart';

class PaymentProductInfo extends ConsumerWidget {
  final options;

  const PaymentProductInfo({this.options});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartStore cartStore = ref.watch(cartProvider);
    return Column(
      children: [
        SizedBox(
          height: 10,
          child: Container(
            color: Colors.grey[100],
          ),
        ),
        SizedBox(height: 10),
        Padding(
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
                  itemCount: cartStore.orderMenuList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${cartStore.orderMenuList[index].name}'),
                            Text(
                                '${(cartStore.orderMenuList[index].price) * cartStore.orderMenuList[index].qty}원')
                          ],
                        ),
                        SizedBox(height: 10),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 1,
                          itemBuilder: (context, optionIndex) {
                            var option = cartStore.orderMenuList[index]
                                .orderMenuOptionList[optionIndex];
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  options.join('/'),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey[400]),
                                ),
                                PaymentMenuCount(
                                    cartStore.orderMenuList[index].qty),
                              ],
                            );
                          },
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
        ),
      ],
    );
  }
}

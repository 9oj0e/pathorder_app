import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/order_request.dart';
import 'package:pathorder_app/data/store/cart_store.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/payment_page_view_model.dart';

class PaymentBottomAppBar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartStore cartStore = ref.watch(cartProvider);
    cartStore.setRequestNull();
    print('${cartStore.storeId}');
    print('${cartStore.storeName}');
    print('${cartStore.customerId}');
    print('${cartStore.customerNickname}');
    print('${cartStore.request}');
    print('${cartStore.orderMenuList}');

    return BottomAppBar(
      elevation: 0,
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
            OrderReqDTO reqDTO = OrderReqDTO(
              storeId: cartStore.storeId!,
              storeName: cartStore.storeName!,
              customerId: cartStore.customerId!,
              customerNickname: cartStore.customerNickname!,
              request: cartStore.request,
              orderMenuList: cartStore.orderMenuList,
            );

            ref.watch(paymentProvider.notifier).notifyOrderAdd(reqDTO);
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

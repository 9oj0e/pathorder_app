import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/store/cart_store.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/widgets/payment_add_menu_button.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/widgets/payment_pick_up_time.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/widgets/payment_point.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/widgets/payment_product_info.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/widgets/payment_store_location.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/widgets/payment_total_amount.dart';

import 'payment_order_quest.dart';

class PaymentBody extends ConsumerWidget {
  const PaymentBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartStore cartStore = ref.read(cartProvider);
    SessionStore sessionStore = ref.read(sessionProvider);
    cartStore.setCustomerId(sessionStore.user!.id);
    cartStore.setCustomerNickname(sessionStore.user!.nickname);

    return ListView(
      children: [
        PaymentStoreLocation(),
        Column(
          children: [
            PaymentProductInfo(),
            PaymentAddMenuButton(),
            PaymentPickUpTime(),
            PaymentOrderQuest(),
            PaymentPoint(),
            PaymentTotalAmount(),
            // PaymentMethod(),
          ],
        )
      ],
    );
  }
}

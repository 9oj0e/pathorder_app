import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/store/cart_store.dart';
import 'package:pathorder_app/data/store/session_store.dart';

import 'widgets/payment_body.dart';
import 'widgets/payment_bottom_app_bar.dart';
import 'widgets/payment_page_app_bar.dart';

class PaymentPage extends ConsumerWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartStore cartStore = ref.read(cartProvider);
    SessionStore sessionStore = ref.read(sessionProvider);
    cartStore.setCustomerId(sessionStore.user!.id);
    cartStore.setCustomerNickname(sessionStore.user!.nickname);
    return Scaffold(
      appBar: PaymentPageAppBar(cartStore.storeName),
      body: PaymentBody(),
      bottomNavigationBar: PaymentBottomAppBar(),
    );
  }
}

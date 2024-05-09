import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/store/session_store.dart';

import 'widgets/payment_body.dart';
import 'widgets/payment_bottom_app_bar.dart';
import 'widgets/payment_page_app_bar.dart';

class PaymentPage extends ConsumerWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SessionStore sessionStore = ref.read(sessionProvider);
    return Scaffold(
      appBar: PaymentPageAppBar(sessionStore.storeName),
      body: PaymentBody(),
      bottomNavigationBar: PaymentBottomAppBar(),
    );
  }
}

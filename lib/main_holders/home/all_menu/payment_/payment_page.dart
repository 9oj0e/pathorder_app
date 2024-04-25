import 'package:flutter/material.dart';

import 'components/add_menu_button.dart';
import 'components/payment_bottom_app_bar.dart';
import 'components/payment_page_app_bar.dart';
import 'components/pick_up_time.dart';
import 'components/product_info.dart';
import 'components/store_location.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PaymentPageAppBar(),
      body: NestedScrollView(
        headerSliverBuilder: (context, _) {
          return [
            SliverList(
              delegate: SliverChildListDelegate([
                StoreLocation(),
              ]),
            ),
          ];
        },
        body: Column(
          children: [
            ProductInfo(),
            AddMenuButton(),
            PickUpTime(),
          ],
        ),
      ),
      bottomNavigationBar: PaymentBottomAppBar(),
    );
  }
}

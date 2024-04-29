import 'package:flutter/material.dart';
import 'package:pathorder_app/main_holders/home/all_menu/payment_/components/payment_method.dart';
import 'package:pathorder_app/main_holders/home/all_menu/payment_/components/payment_point.dart';
import 'package:pathorder_app/main_holders/home/all_menu/payment_/components/payment_total_amount.dart';
import 'package:pathorder_app/main_holders/home/all_menu/payment_/components/pick_up_time.dart';
import 'package:pathorder_app/main_holders/home/all_menu/payment_/components/product_info.dart';
import 'package:pathorder_app/main_holders/home/all_menu/payment_/components/store_location.dart';

import 'add_menu_button.dart';
import 'order_quest.dart';

class PaymentBody extends StatelessWidget {
  const PaymentBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        StoreLocation(),
        Column(
          children: [
            ProductInfo(),
            AddMenuButton(),
            PickUpTime(),
            OrderQuest(),
            PaymentPoint(),
            PaymentTotalAmount(),
            PaymentMethod(),
          ],
        )
      ],
    );
  }
}

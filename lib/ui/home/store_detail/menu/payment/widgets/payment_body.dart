import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/widgets/payment_method.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/widgets/payment_point.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/widgets/payment_total_amount.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/widgets/pick_up_time.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/widgets/product_info.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/widgets/store_location.dart';

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

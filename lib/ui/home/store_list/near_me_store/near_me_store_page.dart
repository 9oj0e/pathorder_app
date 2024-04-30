import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/home/store_list/near_me_store/widgets/near_me_store_body.dart';
import 'package:pathorder_app/ui/widgets/custom_back_app_bar.dart';

import '../../../../models/near_me_store_menu.dart';

class NearMeStorePage extends StatelessWidget {
  const NearMeStorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBackAppBar(title: '가까이 있는 매장'),
      body: NearMeStoreBody(nearMeStoreMenu1),
    );
  }
}

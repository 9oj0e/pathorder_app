import 'package:flutter/material.dart';

import '../../../../components/back_app_bar.dart';
import '../../../../models/near_me_store_menu.dart';
import 'components/near_me_store_body.dart';

class NearMeStorePage extends StatelessWidget {
  const NearMeStorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(title: '가까이 있는 매장'),
      body: NearMeStoreBody(nearMeStoreMenu1),
    );
  }
}

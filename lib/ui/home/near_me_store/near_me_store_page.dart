import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/home/near_me_store/widgets/near_me_store_body.dart';
import 'package:pathorder_app/ui/widgets/custom_back_app_bar.dart';

class NearMeStorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomBackAppBar(title: '가까이 있는 매장'),
      body: NearMeStoreBody(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/ui/home/near_me_store/widgets/near_me_store_body.dart';
import 'package:pathorder_app/ui/widgets/custom_back_app_bar.dart';

class NearMeStorePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomBackAppBar(title: '가까이 있는 매장'),
      body: NearMeStoreBody(),
    );
  }
}

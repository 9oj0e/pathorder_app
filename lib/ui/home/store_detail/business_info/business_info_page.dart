import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/ui/home/store_detail/business_info/business_info_view_model.dart';
import 'package:pathorder_app/ui/home/store_detail/business_info/widgets/business_info_body.dart';
import 'package:pathorder_app/ui/widgets/custom_back_app_bar.dart';

class BusinessInfoPage extends ConsumerWidget {
  int storeId;
  String storeName;

  BusinessInfoPage(this.storeId, this.storeName);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BusinessInfoModel? model = ref.watch(businessInfoProvider(storeId));
    if (model == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      return Scaffold(
        appBar: CustomBackAppBar(title: storeName),
        body: BusinessInfoBody(model, storeName),
      );
    }
  }
}

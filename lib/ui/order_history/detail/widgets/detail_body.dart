import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/ui/order_history/detail/detail_page_view_model.dart';

import 'detail_amount.dart';
import 'detail_info.dart';
import 'detail_title.dart';

class DetailBody extends ConsumerWidget {
  List<int> ids;

  DetailBody(this.ids);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DetailPageModel? model = ref.watch(detailPageProvider(ids));
    // if (model == null) {
    //   return Center(child: CircularProgressIndicator());
    // } else {
    return ListView(
      children: [
        DetailTitle(),
        DetailInfo(),
        DetailAmount(),
      ],
    );
  }
}
// }

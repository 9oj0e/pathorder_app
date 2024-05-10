import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/ui/widgets/custom_back_app_bar.dart';

import 'widgets/detail_body.dart';

class OrderDetailPage extends ConsumerWidget {
  int orderId;

  OrderDetailPage(this.orderId);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SessionUser sessionUser = ref.read(sessionProvider);
    return Scaffold(
      appBar: CustomBackAppBar(title: ''),
      backgroundColor: Colors.white,
      body: DetailBody([sessionUser.user!.id, orderId]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_body.dart';

class StoreDetailPage extends StatefulWidget {
  int storeId;

  StoreDetailPage(this.storeId);

  @override
  State<StoreDetailPage> createState() => _StoreDetailPageState();
}

class _StoreDetailPageState extends State<StoreDetailPage> {
  @override
  Widget build(BuildContext context) {
    print(widget.storeId);
    return DefaultTabController(
      length: 2, // TabBar에 표시할 탭 수
      child: Scaffold(
        backgroundColor: Colors.white,
        body: StoreDetailBody(widget.storeId),
      ),
    );
  }
}

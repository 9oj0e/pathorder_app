import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_body.dart';

class StoreDetailPage extends StatefulWidget {
  const StoreDetailPage({Key? key});

  @override
  State<StoreDetailPage> createState() => _StoreDetailPageState();
}

class _StoreDetailPageState extends State<StoreDetailPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // TabBar에 표시할 탭 수
      child: Scaffold(
        body: StoreDetailBody(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'list_order/list_order_page.dart';
import 'map_order/map_order_page.dart';
import 'widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: SearchTextFieldApp(),
          bottom: const TabBar(
            indicatorColor: Colors.black87,
            labelColor: Colors.black87,
            tabs: <Widget>[
              Tab(
                child: Text("리스트로 주문"),
              ),
              Tab(
                child: Text("지도로 주문"),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: ListOrderPage(),
            ),
            MapOrderPage(),
          ],
        ),
      ),
    );
  }
}

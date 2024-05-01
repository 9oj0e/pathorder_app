import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/home/widgets/home_page_body.dart';

import 'widgets/search_text_field_app.dart';

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
            tabs: [
              Tab(child: Text("리스트로 주문")),
              Tab(child: Text("지도로 주문")),
            ],
          ),
        ),
        body: HomePageBody(),
      ),
    );
  }
}

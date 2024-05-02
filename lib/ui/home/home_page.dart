import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/ui/home/widgets/home_body.dart';

import 'widgets/home_search_text_field_app.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SessionStore store = ref.read(sessionProvider);

    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: HomeBody(),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: HomeSearchTextFieldApp(),
      bottom: const TabBar(
        indicatorColor: Colors.black87,
        labelColor: Colors.black87,
        tabs: [
          Tab(child: Text("리스트로 주문")),
          Tab(child: Text("지도로 주문")),
        ],
      ),
    );
  }
}

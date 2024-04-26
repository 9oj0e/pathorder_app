import 'package:flutter/material.dart';

import 'components/store_detail_app_bar.dart';
import 'components/store_detail_bottom_button.dart';
import 'components/store_detail_tab_bar.dart';
import 'components/store_detail_tab_bar_view.dart';
import 'components/store_detail_title.dart';

class StoreDetailPage extends StatefulWidget {
  const StoreDetailPage({Key? key});

  @override
  State<StoreDetailPage> createState() => _StoreDetailPageState();
}

class _StoreDetailPageState extends State<StoreDetailPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2, // TabBar에 표시할 탭 수
      child: Scaffold(
          body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder: (context, _) {
              return [
                StoreDetailAppBar(screenHeight: screenHeight),
                StoreDetailTitle(),
              ];
            },
            body: Column(
              children: [
                StoreDetailTabBar(),
                Expanded(child: StoreDetailTabBarView())
              ],
            ),
          ),
          StoreDetailBottomButton(),
        ],
      )),
    );
  }
}

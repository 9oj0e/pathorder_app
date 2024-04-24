import 'package:flutter/material.dart';

import 'components/store_detail_app_bar.dart';
import 'components/store_detail_bottom_button.dart';
import 'components/store_detail_tab_bar.dart';
import 'components/store_detail_tab_bar_view.dart';
import 'components/store_detail_title.dart';

class StoreDetailPage extends StatelessWidget {
  const StoreDetailPage({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3, // TabBar에 표시할 탭 수
      child: Scaffold(
        body: Stack(
          children: [
            CustomScrollView(
              slivers: [
                StoreDetailAppBar(screenHeight: screenHeight),
                StoreDetailTitle(),
                StoreDetailTabBar(),
                StoreDetailTabBarView(),
              ],
            ),
            StoreDetailBottomButton(),
          ],
        ),
      ),
    );
  }
}

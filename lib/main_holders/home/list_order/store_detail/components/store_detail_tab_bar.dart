import 'package:flutter/material.dart';

class StoreDetailTabBar extends StatelessWidget {
  const StoreDetailTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: TabBar(
        tabs: [
          Tab(text: '메뉴'),
          Tab(text: '후기'),
          Tab(text: '매장 정보'),
        ],
      ),
    );
  }
}

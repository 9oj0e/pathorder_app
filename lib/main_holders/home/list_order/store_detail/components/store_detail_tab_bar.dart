import 'package:flutter/material.dart';

class StoreDetailTabBar extends StatelessWidget {
  const StoreDetailTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: [
        Tab(text: '정보'),
        Tab(text: '리뷰'),
      ],
    );
  }
}

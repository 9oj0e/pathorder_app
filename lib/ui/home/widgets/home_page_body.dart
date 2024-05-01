import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/home/widgets/list_tab_bar_view.dart';
import 'package:pathorder_app/ui/home/widgets/map_tab_bar_view.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        ListTabBarView(),
        MapTabBarView(),
      ],
    );
  }
}

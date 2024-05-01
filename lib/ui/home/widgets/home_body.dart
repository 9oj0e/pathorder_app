import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/home/widgets/home_list_tab_bar_view.dart';
import 'package:pathorder_app/ui/home/widgets/home_map_tab_bar_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        HomeListTabBarView(),
        HomeMapTabBarView(),
      ],
    );
  }
}

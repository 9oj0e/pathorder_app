import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_app_bar.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_bottom_button.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_tab_bar.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_tab_bar_view.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_title.dart';

class StoreDetailBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
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
    );
  }
}

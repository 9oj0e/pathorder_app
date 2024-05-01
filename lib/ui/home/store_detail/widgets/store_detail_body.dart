import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_app_bar.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_bottom_button.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_tab_bar.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_tab_bar_view.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_title.dart';

class StoreDetailBody extends StatelessWidget {
  const StoreDetailBody({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
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

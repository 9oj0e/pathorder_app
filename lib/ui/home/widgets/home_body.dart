import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/ui/home/home_page_view_model.dart';
import 'package:pathorder_app/ui/home/widgets/home_list_tab_bar_view.dart';
import 'package:pathorder_app/ui/home/widgets/home_map_tab_bar_view.dart';

class HomeBody extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    HomePageModel? model = ref.watch(homePageProvider);

    if (model == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      return TabBarView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeListTabBarView(),
          HomeMapTabBarView(model),
        ],
      );
    }
  }
}

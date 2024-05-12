import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/store/cart_store.dart';
import 'package:pathorder_app/ui/home/store_detail/store_detail_view_model.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_app_bar.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_bottom_button.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_tab_bar.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_tab_bar_view.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_title.dart';

class StoreDetailBody extends ConsumerWidget {
  int storeId;

  StoreDetailBody(this.storeId);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    StoreDetailModel? model = ref.watch(storeDetailProvider(storeId));
    CartStore cartStore = ref.read(cartProvider);
    double screenHeight = MediaQuery.of(context).size.height;

    if (model == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      return Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder: (context, _) {
              return [
                StoreDetailAppBar(screenHeight, model.store.imgFilename),
                StoreDetailTitle(model.store.name),
              ];
            },
            body: Column(
              children: [
                StoreDetailTabBar(),
                Expanded(
                    child: StoreDetailTabBarView(
                  model.store.name,
                  model.store.openingTime,
                  model.store.closingTime,
                  model.store.closedDay,
                  model.store.intro,
                  model.store.address,
                  cartStore.storeId,
                ))
              ],
            ),
          ),
          StoreDetailBottomButton(model.store.id),
        ],
      );
    }
  }
}

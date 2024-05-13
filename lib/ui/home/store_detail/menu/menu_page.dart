import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/store/cart_store.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/menu_page_view_model.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/widgets/menu_item.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/widgets/menu_search.dart';

import 'widgets/menu_bottom_app_bar.dart';

class MenuPage extends ConsumerWidget {
  int storeId;

  MenuPage(this.storeId);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    MenuModel? model = ref.watch(menuProvider(storeId));
    CartStore cartStore = ref.read(cartProvider);

    if (model == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      cartStore.setStoreName(model.store.storeName);
      cartStore.setStoreId(model.store.storeId);
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 18,
            ),
          ),
          title: Text("${model.store.storeName}"),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Center(child: MenuSearch()),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return MenuItem(
                    menuNameKor: model.store.menu[index].name,
                    menuNameEng: model.store.menu[index].name,
                    price: model.store.menu[index].price,
                    imgUrl: model.store.menu[index].imgFilename,
                    storeId: storeId,
                    menuId: model.store.menu[index].id,
                    storeName: model.store.storeName,
                  );
                },
                childCount: model.store.menu.length,
              ),
            ),
          ],
        ),
        bottomNavigationBar: MenuBottomAppBar(),
      );
    }
  }
}

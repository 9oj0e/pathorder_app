import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/store/cart_store.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/menu_page_view_model.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/widgets/menu_item.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/widgets/menu_search.dart';

import 'widgets/menu_bottom_app_bar.dart';

class MenuPage extends ConsumerWidget {
  final int storeId;

  MenuPage(this.storeId);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(menuProvider(storeId));
    final cartStore = ref.read(cartProvider);
    final searchQuery = ref.watch(menuSearchProvider);

    if (model == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      cartStore.setStoreName(model.store.storeName);
      cartStore.setStoreId(model.store.storeId);
      final filteredMenu = model.store.menu.where((menu) {
        final menuName = menu.name.toLowerCase();
        final query = searchQuery.toLowerCase();
        return menuName.contains(query);
      }).toList();

      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          scrolledUnderElevation: 0,
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
                  final menu = filteredMenu[index];
                  return MenuItem(
                    menuNameKor: menu.name,
                    menuNameEng: menu.name,
                    price: menu.price,
                    imgUrl: menu.imgFilename,
                    storeId: storeId,
                    menuId: menu.id,
                    storeName: model.store.storeName,
                  );
                },
                childCount: filteredMenu.length,
              ),
            ),
          ],
        ),
        bottomNavigationBar: MenuBottomAppBar(),
      );
    }
  }
}

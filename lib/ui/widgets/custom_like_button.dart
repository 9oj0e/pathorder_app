import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/ui/home/store_detail/store_detail_view_model.dart';

class CustomLikeButton extends ConsumerWidget {
  final int storeId;

  CustomLikeButton(this.storeId);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SessionStore sessionStore = ref.read(sessionProvider);
    StoreDetailModel? model = ref.watch(storeDetailProvider(storeId));

    if (model == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      return IconButton(
        onPressed: () async {
          if (model.store.liked) {
            await ref
                .read(storeDetailProvider(storeId).notifier)
                .notifyLikeDelete(sessionStore.user!.id, storeId);
          } else {
            await ref
                .read(storeDetailProvider(storeId).notifier)
                .notifyLikePost(sessionStore.user!.id, storeId);
          }
        },
        icon: Icon(model.store.liked
            ? CupertinoIcons.heart_solid
            : CupertinoIcons.heart),
        color: model.store.liked ? Colors.deepOrangeAccent : Colors.white,
      );
    }
  }
}

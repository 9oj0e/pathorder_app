import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/ui/home/home_page_view_model.dart';

import 'home_nearby_me_store.dart';
import 'home_nearby_me_text.dart';

class HomeNearbyMe extends ConsumerWidget {
  const HomeNearbyMe({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    HomePageModel? model = ref.watch(homePageProvider);
    SessionUser sessionUser = ref.read(sessionProvider);

    if (model == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      return Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeNearbyMeText(name: sessionUser.user!.nickname),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: model.stores.sublist(0, min(model.stores.length, 4))
                    .map((store) =>
                    HomeNearbyMeStore(
                      cafeName: store.name,
                      distance: store.distance,
                      imageUrl: store.imgFilename,
                      id: store.id,
                      likeCount: store.likeCount,
                      reviewCount: store.reviewCount,
                    )).toList(),
              ),),
          ],
        ),
      );
    }
  }
}

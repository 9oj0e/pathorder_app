import 'package:flutter/material.dart';

import 'home_ad.dart';
import 'home_banner_icons.dart';
import 'home_grey_blank.dart';
import 'home_nearby_me.dart';

class HomeListTabBarView extends StatelessWidget {
  const HomeListTabBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        HomeBannerIcons(),
        GreyBlank(),
        HomeAd(),
        HomeNearbyMe(),
      ],
    );
  }
}

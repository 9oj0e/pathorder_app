import 'package:flutter/material.dart';

import 'ad.dart';
import 'banner_icons.dart';
import 'grey_blank.dart';
import 'nearby_cafe.dart';

class ListTabBarView extends StatelessWidget {
  const ListTabBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        BannerIcons(),
        GreyBlank(),
        Ad(),
        NearbyCafe(),
      ],
    );
  }
}

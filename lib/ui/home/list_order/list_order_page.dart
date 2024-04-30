import 'package:flutter/material.dart';

import 'widgets/ad.dart';
import 'widgets/banner_icons.dart';
import 'widgets/grey_blank.dart';
import 'widgets/nearby_cafe.dart';

class ListOrderPage extends StatelessWidget {
  const ListOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          BannerIcons(),
          GreyBlank(),
          Ad(),
          NearbyCafe(),
        ],
      ),
    );
  }
}

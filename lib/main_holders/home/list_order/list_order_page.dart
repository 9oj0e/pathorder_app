import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/ad.dart';
import 'components/banner_icons.dart';
import 'components/grey_blank.dart';
import 'components/nearby_cafe.dart';

class ListOrderPage extends StatelessWidget {
  const ListOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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



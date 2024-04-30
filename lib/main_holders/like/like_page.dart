import 'package:flutter/material.dart';
import 'package:pathorder_app/main_holders/like/widgets/like_page_app_bar.dart';
import 'package:pathorder_app/main_holders/like/widgets/like_page_body.dart';

class LikePage extends StatelessWidget {
  const LikePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight), // Set desired height
        child: LikePageAppBar(),
      ),
      body: LikePageBody(),
      // body: NearMeStoreBody(nearMeStoreMenu1),
    );
  }
}

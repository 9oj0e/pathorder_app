import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/like/widgets/like_app_bar.dart';
import 'package:pathorder_app/ui/like/widgets/like_body.dart';

class LikePage extends StatelessWidget {
  const LikePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight), // Set desired height
        child: LikeAppBar(),
      ),
      body: LikeBody(),
      // body: NearMeStoreBody(nearMeStoreMenu1),
    );
  }
}

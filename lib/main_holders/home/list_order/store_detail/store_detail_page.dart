import 'package:flutter/material.dart';

import 'components/store_detail_app_bar.dart';

class StoreDetailPage extends StatelessWidget {
  const StoreDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          StoreDetailAppBar(screenHeight: screenHeight),
          SliverToBoxAdapter(
            child: Text('body 작성'),
          ),
        ],
      ),
    );
  }
}

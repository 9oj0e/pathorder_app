import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_info.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_review.dart';

class StoreDetailTabBarView extends StatelessWidget {
  final name;
  final openingTime;
  final closingTime;
  final closedDay;
  final intro;
  final address;
  final storeId;

  StoreDetailTabBarView(this.name, this.openingTime, this.closingTime,
      this.closedDay, this.intro, this.address, this.storeId);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TabBarView(
        children: [
          StoreDetailInfo(
              intro: intro,
              name: name,
              openingTime: openingTime,
              closingTime: closingTime,
              closedDay: closedDay,
              address: address,
              storeId: storeId),
          StoreDetailReview(),
        ],
      ),
    );
  }
}

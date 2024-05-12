import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/home/store_detail/business_info/business_info_view_model.dart';
import 'package:pathorder_app/ui/widgets/custom_divider.dart';

class BusinessInfoBody extends StatelessWidget {
  BusinessInfoModel model;
  final storeName;

  BusinessInfoBody(this.model, this.storeName);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          Text(
            '사업자 정보',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            '상호명:${storeName}',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 5),
          Text(
            '사업자등록번호:${model.businessInfo.bizNum}',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            height: 10,
          ),
          CustomDivider(),
        ],
      ),
    );
  }
}

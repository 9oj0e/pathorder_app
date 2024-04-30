import 'package:flutter/material.dart';

class OrderHistoryListDivider extends StatelessWidget {
  const OrderHistoryListDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 2.5, // 두께 조절
      color: Colors.grey[200], // 색상 조절
      height: 30,
    );
  }
}

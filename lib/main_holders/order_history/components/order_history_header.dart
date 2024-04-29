import 'package:flutter/cupertino.dart';

class OrderHistoryHeader extends StatelessWidget {
  const OrderHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "주문내역",
      style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

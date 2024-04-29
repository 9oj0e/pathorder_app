import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '결제수단',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PaymentMethodItem(title: '카카오페이'),
              PaymentMethodItem(title: '네이버페이'),
              PaymentMethodItem(title: '토스페이'),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PaymentMethodItem(title: '페이코'),
              PaymentMethodItem(title: '애플페이'),
              PaymentMethodItem(title: '신용/체크카드'),
            ],
          ),
        ],
      ),
    );
  }
}

class PaymentMethodItem extends StatelessWidget {
  final title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('결제수단 버튼 클릭');
      },
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 120,
        color: Colors.grey[200],
        child: Text('${title}'),
      ),
    );
  }

  const PaymentMethodItem({
    required this.title,
  });
}

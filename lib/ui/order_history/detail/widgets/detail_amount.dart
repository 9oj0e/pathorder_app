import 'package:flutter/material.dart';

class DetailAmount extends StatelessWidget {
  String totalPrice;

  DetailAmount(this.totalPrice);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '합계',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                '${totalPrice}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              Text(
                '결제금액',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent),
              ),
              Spacer(),
              Text(
                '${totalPrice}',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent),
              )
            ],
          )
        ],
      ),
    );
  }
}

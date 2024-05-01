import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentAddMenuButton extends StatelessWidget {
  const PaymentAddMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        InkWell(
          onTap: () {
            // TODO : 메뉴 더 담기 클릭
          },
          child: Row(
            children: [
              Icon(
                CupertinoIcons.plus_circle,
                size: 18,
              ),
              SizedBox(width: 5),
              Text(
                '메뉴 더 담기',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Spacer(),
      ],
    );
  }
}

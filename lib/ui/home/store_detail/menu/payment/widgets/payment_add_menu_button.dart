import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentAddMenuButton extends StatelessWidget {
  const PaymentAddMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Spacer(),
            InkWell(
              onTap: () {
                // TODO : 메뉴 더 담기 클릭
                Navigator.pop(context);
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
        ),
        SizedBox(height: 15),
        SizedBox(
          height: 10,
          child: Container(
            color: Colors.grey[100],
          ),
        ),
      ],
    );
  }
}

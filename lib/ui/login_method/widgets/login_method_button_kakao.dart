import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginMethodButtonKakao extends StatelessWidget {
  const LoginMethodButtonKakao({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330,
      height: 68,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.chat_bubble_fill, color: Colors.black),
            // 말풍선 아이콘
            SizedBox(width: 8),
            // 아이콘과 텍스트 사이의 간격 조절
            Text(
              "카카오로 3초만에 로그인",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

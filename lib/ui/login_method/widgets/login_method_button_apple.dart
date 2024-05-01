import 'package:flutter/material.dart';

class LoginMethodButtonApple extends StatelessWidget {
  const LoginMethodButtonApple({
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
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.apple,
              color: Colors.black,
              size: 34,
            ), // 말풍선 아이콘
            SizedBox(width: 8), // 아이콘과 텍스트 사이의 간격 조절
            Text(
              "Apple로 로그인",
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

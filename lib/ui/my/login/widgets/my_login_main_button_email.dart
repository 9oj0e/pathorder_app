import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../auth/login/login_page.dart';

class MyLoginMainButtonEmail extends StatelessWidget {
  const MyLoginMainButtonEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330,
      height: 68,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ),
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          minimumSize: MaterialStateProperty.all<Size>(Size(330, 68)),
          // 버튼의 최소 크기를 지정합니다.
          side: MaterialStateProperty.all<BorderSide>(
              BorderSide(color: Colors.white)), // 테두리 색상을 지정합니다.
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.perm_identity, color: Colors.white), // 말풍선 아이콘
            SizedBox(width: 8), // 아이콘과 텍스트 사이의 간격 조절
            Text(
              "아이디로 로그인",
              style: TextStyle(
                color: Colors.white,
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

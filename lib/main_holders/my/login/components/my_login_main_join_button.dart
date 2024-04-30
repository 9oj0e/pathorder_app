import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../auth/join/join_page.dart';

class MyLoginMainJoinButton extends StatelessWidget {
  const MyLoginMainJoinButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        "아이디로 회원가입하기",
        style: TextStyle(
          color: Colors.white, // 흰색 텍스트
          fontSize: 15,
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => JoinPage(),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

class LoginMethodButtonHeader extends StatelessWidget {
  const LoginMethodButtonHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "기다리지 않는 VIP가 되는 법",
          style: TextStyle(
            fontSize: 21,
            color: Colors.white, // 흰색 텍스트
          ),
        ),
        Text(
          "패스오더",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            color: Colors.white, // 흰색 텍스트
          ),
        ),
      ],
    );
  }
}

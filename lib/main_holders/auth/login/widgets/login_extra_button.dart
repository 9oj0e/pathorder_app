import 'package:flutter/material.dart';

class LoginExtraButton extends StatelessWidget {
  const LoginExtraButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            '아이디 찾기',
            style: TextStyle(fontSize: 12, color: Colors.grey[700]),
          ),
        ),
        Text('ㅣ'),
        TextButton(
          onPressed: () {},
          child: Text(
            '비밀번호 찾기',
            style: TextStyle(fontSize: 12, color: Colors.grey[700]),
          ),
        ),
        Text('ㅣ'),
        TextButton(
          onPressed: () {},
          child: Text(
            '회원가입',
            style: TextStyle(fontSize: 12, color: Colors.grey[700]),
          ),
        ),
      ],
    );
  }
}

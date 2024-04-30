import 'package:flutter/material.dart';

class JoinExtraButton extends StatelessWidget {
  const JoinExtraButton({
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
      ],
    );
  }
}

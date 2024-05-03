import 'package:flutter/material.dart';

class ProfileTextButton extends StatelessWidget {
  final text;

  const ProfileTextButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // TODO : 페이지 이동
      },
      child: Row(
        children: [
          Text(
            '${text}',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 13,
            color: Colors.black26,
          )
        ],
      ),
    );
  }
}

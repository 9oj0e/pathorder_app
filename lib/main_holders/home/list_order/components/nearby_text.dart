import 'package:flutter/material.dart';

class NearbyText extends StatelessWidget {
  const NearbyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: RichText(
        text: const TextSpan(
          style: TextStyle(
            fontSize: 17.0,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          children: [
            TextSpan(
              text: 'ooo님과\n',
            ),
            TextSpan(
              text: '가까이 있는 매장',
              style: TextStyle(
                color: Colors.redAccent, // 특정 부분의 색상 변경
                // 예시: 특정 부분의 글자 굵게 설정
              ),
            ),
            TextSpan(text: "이에요!")
          ],
        ),
      ),
    );
  }
}

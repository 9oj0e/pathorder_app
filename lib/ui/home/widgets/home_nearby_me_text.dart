import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pathorder_app/_core/constants/move.dart';

class HomeNearbyMeText extends StatelessWidget {
  final name;

  const HomeNearbyMeText({
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              children: [
                TextSpan(
                  text: '${name}님과\n',
                ),
                TextSpan(
                  text: '가까이 있는 매장',
                  style: TextStyle(
                    color: Colors.redAccent, // 특정 부분의 색상 변경
                    // 예시: 특정 부분의 글자 굵게 설정
                  ),
                ),
                TextSpan(text: "이에요!"),
              ],
            ),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // 가까이 있는 매장 더보기 버튼
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Move.nearMeStore);
                },
                child: Row(
                  children: [
                    Text(
                      '더보기',
                      style: TextStyle(fontSize: 12),
                    ),
                    Icon(
                      CupertinoIcons.arrow_right,
                      size: 14,
                    ),
                    SizedBox(width: 5),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class review_bottom extends StatelessWidget {
  const review_bottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '"작성하기"를 누르기 전 한 번 더 확인해 주세요❗️',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 13),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '- 다른 매장에서 찍었던 음료사진이 첨부되는 않았나요?',
            style: TextStyle(color: Colors.grey[400], fontSize: 11),
          ),
          Text(
            '- 오늘 구매한 음료나 매장과 전혀 관련 없는 내용으로 작성되지 않았나요?',
            style: TextStyle(color: Colors.grey[400], fontSize: 11),
          ),
          Text(
            '- 패써님들이 작성해 주신 내용을 매일 사장님들이 확인하고 있어요.',
            style: TextStyle(color: Colors.grey[400], fontSize: 11),
          ),
          Text(
            ' 근거 없는 악성 비방글은 삼가 부탁드립니다.',
            style: TextStyle(color: Colors.grey[400], fontSize: 11),
          ),
        ],
      ),
    );
  }
}

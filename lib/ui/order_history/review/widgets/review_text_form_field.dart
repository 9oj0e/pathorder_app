import 'package:flutter/material.dart';

class ReviewTextFormField extends StatelessWidget {
  final validator;
  final TextEditingController controller;

  const ReviewTextFormField({
    required this.validator,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            hintStyle: TextStyle(
              color: Colors.black54,
              fontSize: 14, // 원하는 크기로 설정
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            border: InputBorder.none, // 밑줄 없애기
            hintText: '패써님의 리뷰가 다른 패써님의 음료선택에\n큰 도움이 되어요.',
          ),
          maxLines: 3, // 최대 세 줄까지 입력 가능
        ),
      ),
    );
  }
}

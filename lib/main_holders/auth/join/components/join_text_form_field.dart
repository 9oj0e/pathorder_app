import 'package:flutter/material.dart';

class JoinTextFormField extends StatelessWidget {
  final text;
  final hinttext;

  const JoinTextFormField({
    required this.text,
    required this.hinttext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${text}',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        SizedBox(height: 10),
        TextFormField(
          validator: (value) => value!.isEmpty
              ? "Please enter some text"
              : null, // 1. 값이 없으면 Please enter some text 경고 화면 표시
          obscureText:
          // 2. 해당 TextFormField가 비밀번호 입력 양식이면 **** 처리 해주기
          '이메일' == "Password" ? true : false,
          decoration: InputDecoration(
            hintText: "${hinttext}",
            hintStyle: TextStyle(color: Colors.grey),
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            enabledBorder: OutlineInputBorder(
              // 3. 기본 TextFormField 디자인
                borderSide: BorderSide(color: Colors.grey)
              // borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              // 4. 손가락 터치시 TextFormField 디자인
                borderSide: BorderSide(color: Colors.grey)
              // borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              // 5. 에러발생시 TextFormField 디자인
                borderSide: BorderSide(color: Colors.grey)
              // borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              // 5. 에러가 발생 후 손가락을 터치했을 때 TextFormField 디자인
                borderSide: BorderSide(color: Colors.grey)
              // borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}

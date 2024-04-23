import 'package:flutter/material.dart';

class ProfileTextFormFieldPhone extends StatelessWidget {
  final String text;

  const ProfileTextFormFieldPhone({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${text}',
          style: TextStyle(fontSize: 18, color: Colors.black54),
        ),
        SizedBox(width: 10),
        SizedBox(
          width: 220,
          height: 40,
          child: TextFormField(
            // 텍스트가 상자의 세로기준 정중앙에 글자가 써지도록 함
            textAlignVertical: TextAlignVertical(y: 1.0),
            decoration: InputDecoration(
              hintText: "",
              enabledBorder: OutlineInputBorder(
                // 3. 기본 TextFormField 디자인
                borderSide: BorderSide(
                  width: 0.5,
                  color: Colors.black54,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                // 4. 손가락 터치시 TextFormField 디자인
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.black54,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              errorBorder: OutlineInputBorder(
                // 5. 에러발생시 TextFormField 디자인
                borderSide: BorderSide(
                  width: 0.5,
                  color: Colors.black54,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedErrorBorder: OutlineInputBorder(
                // 5. 에러가 발생 후 손가락을 터치했을 때 TextFormField 디자인
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.black54,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        Spacer(),
        InkWell(
          onTap: () {
            // TODO : 번호변경 클릭 시 번호 변경 페이지 이동
          },
          child: Container(
            width: 70,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.5,
                color: Colors.black54,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                '번호변경',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
          ),
        )
      ],
    );
  }
}

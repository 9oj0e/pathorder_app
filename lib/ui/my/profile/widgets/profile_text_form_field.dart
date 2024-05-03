import 'package:flutter/material.dart';
import 'package:pathorder_app/data/models/user.dart';

class ProfileTextFormField extends StatelessWidget {
  final String text;
  final hintText;

  ProfileTextFormField({required this.text, this.hintText});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${text}',
          style: TextStyle(fontSize: 15, color: Colors.black54, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 25,
        ),
        SizedBox(
          width: 290,
          height: 27,
          child: TextFormField(
            // 텍스트가 상자의 세로기준 정중앙에 글자가 써지도록 함
            textAlignVertical: TextAlignVertical(y: 1.0),
            decoration: InputDecoration(
              hintText: hintText,
              enabledBorder: OutlineInputBorder(
                // 3. 기본 TextFormField 디자인
                borderSide: BorderSide(
                  width: 0.5,
                  color: Colors.black54,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                // 4. 손가락 터치시 TextFormField 디자인
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.black54,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              errorBorder: OutlineInputBorder(
                // 5. 에러발생시 TextFormField 디자인
                borderSide: BorderSide(
                  width: 0.5,
                  color: Colors.black54,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedErrorBorder: OutlineInputBorder(
                // 5. 에러가 발생 후 손가락을 터치했을 때 TextFormField 디자인
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.black54,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

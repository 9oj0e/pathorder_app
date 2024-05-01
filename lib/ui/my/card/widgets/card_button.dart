import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  const CardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 90,
      color: Colors.transparent, // 투명하게 해도 색이 안변하는거 같음
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.deepOrangeAccent,
        ),
        child: InkWell(
          splashColor: Colors.black,
          borderRadius: BorderRadius.circular(10.0),
          onTap: () {
            // TODO: 카드 추가 클릭
            print('카드 추가 버튼이 눌렸습니다.');
          },
          child: Center(
            child: Text(
              "카드 추가",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

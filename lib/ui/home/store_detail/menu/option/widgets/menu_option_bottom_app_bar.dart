import 'package:flutter/material.dart';

class MenuOptionBottomAppBar extends StatelessWidget {
  const MenuOptionBottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      // TODO : widgets
      height: 90,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.deepOrangeAccent,
        ),
        child: InkWell(
          splashColor: Colors.black,
          borderRadius: BorderRadius.circular(10.0),
          onTap: () {
            Navigator.pop(context);
            // TODO: 담기버튼 눌리면 장바구니에 담겨야함
            print('담기 버튼이 눌렸습니다.');
          },
          child: Center(
            child: Text(
              "담기",
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

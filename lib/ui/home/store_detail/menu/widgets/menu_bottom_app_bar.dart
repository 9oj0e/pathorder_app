import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/payment_page.dart';

class MenuBottomAppBar extends StatelessWidget {
  const MenuBottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
            // TODO: 장바구니 보기 버튼을 눌렀을 때 수행할 작업
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PaymentPage(),
              ),
            );
          },
          child: Center(
            child: Text(
              "장바구니 보기",
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_login_main_button_apple.dart';
import 'my_login_main_button_email.dart';
import 'my_login_main_button_kakao.dart';
import 'my_login_main_header.dart';
import 'my_login_main_join_button.dart';

class MyLoginMainButtons extends StatelessWidget {
  const MyLoginMainButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 55),
          MyLoginMainHeader(),
          SizedBox(height: 190),
          MyLoginMainButtonKakao(),
          SizedBox(height: 20,),
          MyLoginMainButtonApple(),
          SizedBox(height: 20,),
          MyLoginMainButtonEmail(),
          SizedBox(height: 55),
          MyLoginMainJoinButton(),
        ],
      ),
    );
  }
}








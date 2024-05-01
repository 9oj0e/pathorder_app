import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_method_button_apple.dart';
import 'login_method_button_email.dart';
import 'login_method_button_header.dart';
import 'login_method_button_kakao.dart';
import 'login_method_join_button.dart';

class LoginMethodButtons extends StatelessWidget {
  const LoginMethodButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 55),
          LoginMethodButtonHeader(),
          SizedBox(height: 190),
          LoginMethodButtonKakao(),
          SizedBox(
            height: 20,
          ),
          LoginMethodButtonApple(),
          SizedBox(
            height: 20,
          ),
          LoginMethodButtonEmail(),
          SizedBox(height: 55),
          LoginMethodJoinButton(),
        ],
      ),
    );
  }
}

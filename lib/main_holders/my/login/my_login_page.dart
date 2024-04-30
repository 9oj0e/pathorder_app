import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/my_login_main_pop_button.dart';
import 'components/my_login_main_buttons.dart';
import 'components/my_login_main_header.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDAyMDJfMTUx%2FMDAxNzA2ODUyNjAzNDIy.h68OmVROTRpHZOhiwXEBbh3CF-z46gHFok14OUq6PvYg.RcovBOYYY3WhiBlzgeb9HBW2qTsOYiGGTfKAo-XxONAg.JPEG.ws4501%2F1706852511105.jpg&type=sc960_832',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5), // 투명도가 있는 검은색
            width: double.infinity,
            height: double.infinity,
          ),
          MyLoginMainButtons(),
          MyLoginMainPopButton(),
        ],
      ),
    );
  }
}







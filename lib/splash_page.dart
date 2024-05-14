import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/login_method/login_method_page.dart';
import 'package:pathorder_app/ui/login_method/widgets/login_method_body.dart';

import '_core/constants/move.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Splash 페이지에서 다음 화면으로 이동
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginMethodPage()),
      );
    });

    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/pathorder.jpg',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
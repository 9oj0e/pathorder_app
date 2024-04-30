import 'package:flutter/material.dart';
import 'package:pathorder_app/components/back_app_bar.dart';
import 'package:pathorder_app/main_holders/auth/login/widgets/login_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BackAppBar(title: ''),
      body: LoginBody(),
    );
  }
}

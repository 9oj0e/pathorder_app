import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/login_method/login/widgets/login_body.dart';
import 'package:pathorder_app/ui/widgets/custom_back_app_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomBackAppBar(title: ''),
      body: LoginBody(),
    );
  }
}

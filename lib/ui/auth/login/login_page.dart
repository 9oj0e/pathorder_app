import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/auth/login/widgets/login_body.dart';

import '../../widgets/back_app_bar.dart';

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

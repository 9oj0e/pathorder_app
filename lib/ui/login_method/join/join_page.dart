import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/login_method/join/widgets/join_body.dart';
import 'package:pathorder_app/ui/widgets/custom_back_app_bar.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomBackAppBar(title: ''),
      body: JoinBody(),
    );
  }
}

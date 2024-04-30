import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../components/back_app_bar.dart';
import '../login/widgets/login_body.dart';
import 'components/join_body.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BackAppBar(title: ''),
      body: JoinBody(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:pathorder_app/holders/home/components/back_app_bar.dart';

class NearMeStorePage extends StatelessWidget {
  const NearMeStorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(title: '가까이 있는 매장'),
      body: Center(
        child: Text('가까이 있는 매장 페이지'),
      ),
    );
  }
}

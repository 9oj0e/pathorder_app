import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/widgets/custom_back_app_bar.dart';

class BusinessInfoPage extends StatelessWidget {
  const BusinessInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 이거 해야함
      appBar: CustomBackAppBar(title: '컴포즈커피 서면학원점'),
    );
  }
}

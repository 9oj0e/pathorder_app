import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/widgets/custom_back_app_bar.dart';

import 'widgets/detail_body.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBackAppBar(title: ''),
      backgroundColor: Colors.white,
      body: DetailBody(),
    );
  }
}

import 'package:flutter/material.dart';

import 'detail_amount.dart';
import 'detail_info.dart';
import 'detail_title.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      DetailTitle(),
      DetailInfo(),
      DetailAmount(),
    ]);
  }
}

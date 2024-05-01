import 'package:flutter/material.dart';
import 'package:pathorder_app/models/icon_menu.dart';
import 'package:pathorder_app/ui/my/widgets/my_body_header.dart';
import 'package:pathorder_app/ui/my/widgets/my_category_buttons.dart';

class MyBody extends StatelessWidget {
  const MyBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MyBodyHeader(),
        SizedBox(height: 8.0),
        MyCategoryButtons(iconMenuList: iconMenu1, mainTitle: '마이 페이지'),
        SizedBox(height: 8.0),
        MyCategoryButtons(iconMenuList: iconMenu2, mainTitle: '기타'),
      ],
    );
  }
}

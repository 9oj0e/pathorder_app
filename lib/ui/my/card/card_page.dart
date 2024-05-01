import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/my/card/widgets/card_button.dart';

import 'widgets/card_body.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _CardAppBar(context),
      body: CardBody(),
      bottomNavigationBar: CardButton(),
    );
  }

  AppBar _CardAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios,
          size: 18,
        ),
      ),
      title: Text(
        "내 카드",
        style: TextStyle(fontSize: 16),
      ),
      centerTitle: true,
      actions: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Text(
                '편집',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                width: 16,
              )
            ],
          ),
        )
      ],
    );
  }
}

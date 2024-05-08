import 'package:flutter/material.dart';

import 'menu_option_radio.dart';

class MenuOptionSelect2 extends StatelessWidget {
  final optionName;
  final price;
  final required;

  const MenuOptionSelect2(
      {required this.optionName, required this.price, required this.required});

  @override
  Widget build(BuildContext context) {
    if (required == false) {
      return Padding(
          padding: EdgeInsets.only(bottom: 5, top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                optionName,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              Row(
                children: [
                  Text(
                    '${price}원',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  MenuOptionRadio(
                    groupName: "${required}",
                    name: "${optionName}",
                  ), // Todo: 위젯 겹침
                ],
              ),
            ],
          ));
    } else {
      return SizedBox();
    }
  }
}

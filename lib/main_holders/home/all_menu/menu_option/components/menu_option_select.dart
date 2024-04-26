import 'package:flutter/material.dart';

import 'menu_radio.dart';

class MenuOptionSelect extends StatelessWidget {
  final optionName;
  final price;

  const MenuOptionSelect({
    required this.optionName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
        EdgeInsets.only(bottom: 5, top: 5),
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
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
                  price,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                MenuRadio(groupName: "필수1", name: "hot",), // Todo: 위젯 겹침
              ],
            ),
          ],
        ));
  }
}
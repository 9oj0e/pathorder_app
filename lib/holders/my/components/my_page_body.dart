import 'package:flutter/material.dart';

import '../../../models/icon_menu.dart';

class MyPageBody extends StatelessWidget {
  final List<IconMenu> iconMenuList;
  final String mainTitle;

  MyPageBody({required this.iconMenuList, required this.mainTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  mainTitle,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Column(
              children: List.generate(
                iconMenuList.length,
                (index) => _buildRowIconItem(
                  iconMenuList[index].title,
                  iconMenuList[index].iconData,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRowIconItem(String title, IconData iconData) {
    return Container(
      height: 50,
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Icon(iconData, size: 17),
            const SizedBox(width: 20),
            Text(title),
          ],
        ),
      ),
    );
  }
}

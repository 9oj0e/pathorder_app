import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/_core/constants/move.dart';
import 'package:pathorder_app/data/store/session_store.dart';

import '../../../models/icon_menu.dart';

class MyCategoryButtons extends ConsumerWidget {
  final List<IconMenu> iconMenuList;
  final String mainTitle;

  MyCategoryButtons({required this.iconMenuList, required this.mainTitle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  index,
                  mainTitle,
                  context,
                  ref
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRowIconItem(String title, IconData iconData, int index,
      String mainTitle, BuildContext context, WidgetRef ref) {
    return Container(
      height: 50,
      child: InkWell(
        onTap: () {
          if (mainTitle == '마이 페이지') {
            if (index == 0) {
              print('내 리뷰 페이지 이동');
            }
            if (index == 1) {
              print('내 포인트 페이지 이동');
            }
            if (index == 2) {
              print('내 카드 페이지 이동');
              Navigator.pushNamed(context, Move.myCard);
            }
          } else if (mainTitle == '기타') {
            if (index == 4) {
              print('로그아웃');
              print(SessionStore().accessToken);
              ref.read(sessionProvider).logout();
              Navigator.pushNamed(context, Move.loginMethod);
              print(SessionStore().accessToken);
            }
          }
        },
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

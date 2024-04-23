import 'package:flutter/cupertino.dart';

class IconMenu {
  final String title;
  final IconData iconData;

  IconMenu({required this.title, required this.iconData});
}

// 마이페이지 - 마이페이지
final List<IconMenu> iconMenu1 = [
  IconMenu(title: '내 리뷰', iconData: CupertinoIcons.text_bubble),
  IconMenu(title: '내 포인트', iconData: CupertinoIcons.ticket),
  IconMenu(title: '내 카드', iconData: CupertinoIcons.creditcard),
];

// 마이페이지 - 기타
final List<IconMenu> iconMenu2 = [
  IconMenu(title: '공지사항', iconData: CupertinoIcons.exclamationmark_square),
  IconMenu(title: '알림 설정', iconData: CupertinoIcons.bell),
  IconMenu(title: '자주 묻는 질문', iconData: CupertinoIcons.question_square),
  IconMenu(title: '버전 정보', iconData: CupertinoIcons.exclamationmark_circle),
  IconMenu(title: '로그아웃', iconData: CupertinoIcons.power),
];

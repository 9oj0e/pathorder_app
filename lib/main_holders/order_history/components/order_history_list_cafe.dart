import 'package:flutter/cupertino.dart';

class OderHistoryListCafe extends StatelessWidget {
  const OderHistoryListCafe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "하이오커피 서면점",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(CupertinoIcons.right_chevron)
      ],
    );
  }
}
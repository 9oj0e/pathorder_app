import 'package:flutter/cupertino.dart';

class OderHistoryListCafe extends StatelessWidget {

  final cafeName;

  const OderHistoryListCafe({required this.cafeName});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          cafeName,
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
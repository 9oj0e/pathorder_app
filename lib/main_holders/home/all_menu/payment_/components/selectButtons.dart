import 'package:flutter/material.dart';

class TimeButtons extends StatefulWidget {
  @override
  _TimeButtons createState() => _TimeButtons();
}

class _TimeButtons extends State<TimeButtons> {
  // List to track the selection state of each button
  List<bool> _selections = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            timeButtonItem(0, '지금'),
            Spacer(),
            timeButtonItem(1, '+5분'),
            Spacer(),
            timeButtonItem(2, '+10분'),
            Spacer(),
            timeButtonItem(3, '+15분'),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            timeButtonItem(4, '+20분'),
            Spacer(),
            timeButtonItem(5, '+30분'),
            Spacer(),
            timeButtonItem(6, '+40분'),
            Spacer(),
            timeButtonItem(7, '+1시간 이상'),
          ],
        ),
      ],
    );
  }

  Container timeButtonItem(int index, String text) {
    return Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: _selections[index] ? Colors.orange : Colors.grey,
          )),
      child: InkWell(
        onTap: () => setState(() {
          // 클릭한 버튼 true
          _selections[index] = !_selections[index];

          // 클릭한 버튼을 제외한 나머지 버튼 false
          for (int i = 0; i < _selections.length; i++) {
            if (i != index) {
              _selections[i] = false;
            }
          }
        }),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: _selections[index] ? Colors.orange : Colors.grey),
        )),
      ),
    );
  }
}

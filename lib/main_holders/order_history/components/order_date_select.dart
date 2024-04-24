import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../order_history_page.dart';

const List<String> _years = <String>[
  '2018',
  '2019',
  '2020',
  '2021',
  '2022',
  '2023',
  '2024',
  // Add more years as needed
];

const List<String> _months = <String>[
  '01',
  '02',
  '03',
  '04',
  '05',
  '06',
  '07',
  '08',
  '09',
  '10',
  '11',
  '12',
];

void main() => runApp(const CupertinoPickerApp());

class CupertinoPickerApp extends StatelessWidget {
  const CupertinoPickerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: OrderHistoryPage(),
    );
  }
}

class CupertinoPickerExample extends StatefulWidget {
  const CupertinoPickerExample({Key? key}) : super(key: key);

  @override
  State<CupertinoPickerExample> createState() => _CupertinoPickerExampleState();
}

class _CupertinoPickerExampleState extends State<CupertinoPickerExample> {
  int _selectedYear = 0;
  int _selectedMonth = 0;

  void _showYearDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  void _showMonthDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        color: CupertinoColors.label.resolveFrom(context),
        fontSize: 22.0,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () => _showYearDialog(
                CupertinoPicker(
                  magnification: 1.22,
                  squeeze: 1.2,
                  useMagnifier: true,
                  itemExtent: 32.0,
                  scrollController: FixedExtentScrollController(
                    initialItem: _selectedYear,
                  ),
                  onSelectedItemChanged: (int selectedItem) {
                    setState(() {
                      _selectedYear = selectedItem;
                    });
                  },
                  children: List<Widget>.generate(_years.length, (int index) {
                    return Center(child: Text(_years[index]));
                  }),
                ),
              ),
              child: Text(
                _years[_selectedYear],
                style: const TextStyle(
                    fontSize: 22.0, fontWeight: FontWeight.w500, color: Colors.deepOrangeAccent),
              ),
            ),
            SizedBox(
              width: 2.0,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(
                "년",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 25, // 버튼의 너비 설정
              height: 35, // 버튼의 높이 설정
              child: CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () => _showMonthDialog(
                  CupertinoPicker(
                    magnification: 1.22,
                    squeeze: 1.2,
                    useMagnifier: true,
                    itemExtent: 32.0,
                    scrollController: FixedExtentScrollController(
                      initialItem: _selectedMonth,
                    ),
                    onSelectedItemChanged: (int selectedItem) {
                      setState(() {
                        _selectedMonth = selectedItem;
                      });
                    },
                    children: List<Widget>.generate(_months.length, (int index) {
                      return Center(child: Text(_months[index]));
                    }),
                  ),
                ),
                child: Text(
                  _months[_selectedMonth],
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(
                "월",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

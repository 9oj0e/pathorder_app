import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderDateSelect extends StatefulWidget {
  const OrderDateSelect({Key? key}) : super(key: key);

  @override
  State<OrderDateSelect> createState() => _OrderDateSelectState();
}

class _OrderDateSelectState extends State<OrderDateSelect> {
  late int selectedYear;
  late int selectedMonth;

  @override
  void initState() {
    super.initState();
    // 초기 선택 값을 현재 연도와 월로 설정합니다.
    selectedYear = DateTime.now().year;
    selectedMonth = DateTime.now().month;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _YearMonthPickerItem(
          children: <Widget>[
            Text(
              '$selectedYear년 $selectedMonth월',
              style: const TextStyle(
                fontSize: 22.0,
                color: Colors.black,
                fontWeight: FontWeight.w400
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 1),
              child: InkWell(
                child: Icon(
                  color: Colors.grey[300],
                  CupertinoIcons.chevron_down_circle_fill
                ),
                onTap: () => _showDatePicker()
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _showDatePicker() {
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
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.monthYear,
            initialDateTime: DateTime(selectedYear, selectedMonth),
            onDateTimeChanged: (DateTime newDateTime) {
              setState(() {
                selectedYear = newDateTime.year;
                selectedMonth = newDateTime.month;
              });
            },
          ),
        ),
      ),
    );
  }
}

class _YearMonthPickerItem extends StatelessWidget {
  const _YearMonthPickerItem({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: children,
      ),
    );
  }
}

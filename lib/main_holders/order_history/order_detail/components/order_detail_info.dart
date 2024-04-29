import 'package:flutter/material.dart';

import '../../../../components/dotted_line.dart';
import '../../../../models/order_detail_menu.dart';

class OrderDetailInfo extends StatelessWidget {
  const OrderDetailInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DataTable(
          dividerThickness: 0.0,
          columns: [
            DataColumn(
              label: Text(
                '메뉴명',
                style: TextStyle(color: Colors.deepOrangeAccent),
              ),
            ),
            DataColumn(
              label: Text(
                '수량',
                style: TextStyle(color: Colors.deepOrangeAccent),
              ),
              numeric: true,
            ),
            DataColumn(
              label: Text(
                '금액',
                style: TextStyle(color: Colors.deepOrangeAccent),
              ),
              numeric: true,
            ),
          ],
          rows: orderDetailMenu1.map((menu) {
            return DataRow(cells: [
              DataCell(
                Text(
                  menu.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              DataCell(
                Text(
                  menu.count.toString(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              DataCell(
                Text(
                  menu.price,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ]);
          }).toList(),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '5분 뒤에 받으러 갈게요',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 20,
                child: Center(
                  child: Container(
                    width: double.infinity,
                    child: DottedLine(
                      color: Colors.grey,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class MenuOptionCount extends StatefulWidget {
  @override
  _MenuOptionCountState createState() => _MenuOptionCountState();
}

class _MenuOptionCountState extends State<MenuOptionCount> {
  int quantity = 1;

  void increasecount() {
    setState(() {
      quantity++;
    });
  }

  void decreasecount() {
    setState(() {
      if (quantity > 1) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)),
      child: Stack(children: [
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: decreasecount,
            ),
            Text(
              '$quantity',
              style: TextStyle(fontSize: 20),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: increasecount,
            ),
          ],
        ),
      ]),
    );
  }
}

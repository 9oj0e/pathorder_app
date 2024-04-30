import 'package:flutter/material.dart';

class MenuCount2 extends StatefulWidget {
  @override
  _MenuCountState createState() => _MenuCountState();
}

class _MenuCountState extends State<MenuCount2> {
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
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                topLeft: Radius.circular(5),
              ),
              border: Border.all(color: Colors.grey)),
          child: InkWell(
            onTap: decreasecount,
            child: Icon(
              Icons.remove,
              size: 20,
            ),
          ),
        ),
        Container(
          height: 30,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Center(
            child: Text(
              '  $quantity  ',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
              border: Border.all(color: Colors.grey)),
          child: InkWell(
            child: Icon(
              Icons.add,
              size: 20,
            ),
            onTap: increasecount,
          ),
        ),
      ],
    );
  }
}

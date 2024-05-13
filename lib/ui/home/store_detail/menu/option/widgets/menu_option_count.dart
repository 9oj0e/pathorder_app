import 'package:flutter/material.dart';
import 'package:pathorder_app/data/store/session_store.dart';

class MenuOptionCount extends StatefulWidget {
  SessionStore sessionStore;

  MenuOptionCount(this.sessionStore);

  @override
  _MenuOptionCountState createState() => _MenuOptionCountState();
}

class _MenuOptionCountState extends State<MenuOptionCount> {
  int quantity = 1;

  void increasecount() {
    if (quantity < 99) {
      setState(() {
        quantity++;
        widget.sessionStore.qty = quantity;
      });
    }
  }

  void decreasecount() {
    setState(() {
      if (quantity > 1) {
        quantity--;
        widget.sessionStore.qty = quantity;
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
          width: 35,
          decoration: BoxDecoration(
            color: Colors.white,
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

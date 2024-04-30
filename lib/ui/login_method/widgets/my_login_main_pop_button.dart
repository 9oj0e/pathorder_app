import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLoginMainPopButton extends StatelessWidget {
  const MyLoginMainPopButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 35,
      left: 15,
      child: IconButton(
        icon: Icon(Icons.close, color: Colors.white),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
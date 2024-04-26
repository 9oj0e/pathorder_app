import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuRadio extends StatefulWidget {
  final String name;
  final String groupName;

  const MenuRadio({
    required this.name,
    required this.groupName,
  });

  @override
  _MenuRadioState createState() => _MenuRadioState();
}

class _MenuRadioState extends State<MenuRadio> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Radio<String>(
      value: widget.name,
      groupValue: selectedValue,
      fillColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.black54;
        }
        return Colors.grey;
      }),
      onChanged: (value) {
        setState(() {
          selectedValue = value;
        });
      },
    );
  }
}
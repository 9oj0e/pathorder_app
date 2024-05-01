import 'package:flutter/material.dart';

class MenuOptionRadio extends StatefulWidget {
  final String name;
  final String groupName;

  const MenuOptionRadio({
    required this.name,
    required this.groupName,
  });

  @override
  _MenuOptionRadioState createState() => _MenuOptionRadioState();
}

class _MenuOptionRadioState extends State<MenuOptionRadio> {
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

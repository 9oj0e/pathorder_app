import 'package:flutter/material.dart';

class ReviewTextFormField extends StatelessWidget {
  final validator;
  final TextEditingController controller;

  const ReviewTextFormField({
    required this.validator,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          border: InputBorder.none, // 밑줄 없애기
        ),
      ),
    );
  }
}

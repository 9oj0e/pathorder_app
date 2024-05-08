import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey[300], // 수평선의 색상 설정
      thickness: 1, // 수평선의 두께 설정
      height: 10, // 수평선의 높이 설정
    );
  }
}

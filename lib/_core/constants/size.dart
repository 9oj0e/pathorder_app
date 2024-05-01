import 'package:flutter/material.dart';

const double smallGap = 5.0;
const double mediumGap = 10.0;
const double largeGap = 20.0;
const double xlargeGap = 100.0;

double getScreenWidth(BuildContext context) { // 현재 디바이스의 너비
  return MediaQuery.of(context).size.width;
}

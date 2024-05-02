import 'package:flutter/material.dart';

class LoginModel extends ChangeNotifier {
  bool isLoggedIn = false; // 로그인 여부를 나타내는 변수

  void login() {
    isLoggedIn = true;
    notifyListeners(); // 로그인 상태 변화 알림
  }

  void logout() {
    isLoggedIn = false;
    notifyListeners(); // 로그인 상태 변화 알림
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../_core/constants/http.dart';
import '../../_core/constants/move.dart';
import '../../main.dart';
import '../dtos/user_request.dart';
import '../models/user.dart';
import '../repositories/user_repository.dart';

class SessionUser {
  User? user;
  String? accessToken;
  bool isLogin = false;

  SessionUser();
}

// 창고
class SessionStore extends SessionUser {
  final mContext = navigatorKey.currentContext;

  Future<void> login(LoginReqDTO loginReqDTO) async {
    print('여기 안들어와???');
    var (responseDTO, accessToken) =
        await UserRepository().fetchLogin(loginReqDTO);
    print(responseDTO.status);
    print("user 유저 유저 유저 : ${responseDTO.response}");

    if (responseDTO.status == 200) {
      await secureStorage.write(key: "accessToken", value: accessToken);

      this.user = responseDTO.response;
      print("user 유저 유저 유저 : ${responseDTO.response}");
      this.accessToken = accessToken;
      this.isLogin = true;

      Navigator.pushNamed(mContext!, Move.mainHolder); // 로그인 성공 시 홈으로
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
          SnackBar(content: Text("로그인 실패 : ${responseDTO.errorMessage}")));
    }
  }
}

// 창고 관리자
final sessionProvider = StateProvider<SessionStore>((ref) {
  return SessionStore();
});

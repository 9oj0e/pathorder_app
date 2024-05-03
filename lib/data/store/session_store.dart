// 창고 데이터

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/_core/constants/http.dart';
import 'package:pathorder_app/_core/constants/move.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/dtos/user_request.dart';
import 'package:pathorder_app/data/models/user.dart';
import 'package:pathorder_app/data/repositories/user_repository.dart';
import 'package:pathorder_app/main.dart';

class SessionUser {
  User? user;
  String? accessToken;
  bool isLogin = false;

  SessionUser();
}

// 창고
class SessionStore extends SessionUser {
  final mContext = navigatorKey.currentContext;

// void loginCheck(String path) {
//   if (isLogin) {
//     Navigator.pushNamed(mContext!, path);
//   } else {
//     Navigator.pushNamed(mContext!, Move.login);
//   }
// }
//
  Future<void> join(JoinReqDTO joinReqDTO) async {
    ResponseDTO responseDTO = await UserRepository().fetchJoin(joinReqDTO);
    print('여기 찍히나');
    // 비지니스 로직
    if (responseDTO.status == 200) {
      Navigator.pushNamed(mContext!, Move.loginId);
      print('회원가입 성공');
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
        SnackBar(content: Text("회원가입 실패 : ${responseDTO.errorMessage}")),
      );
    }
  }

  Future<void> login(LoginReqDTO loginReqDTO) async {
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

      Navigator.pushNamed(mContext!, Move.mainHolder); // 로그인 성공 시 mainHolder
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

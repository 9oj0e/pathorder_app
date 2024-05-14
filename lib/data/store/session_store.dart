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

import '../dtos/order_request.dart';

class SessionUser {
  User? user;
  String? accessToken;
  bool isLogin = false;

  // 주문 할 메뉴 name, price, ㅂ쇼
  String? name;
  int? price;
  int? qty;

  // 주문 할 메뉴의 옵션
  List<OrderMenuOptionList> menuOptionList = [];

  String? storeName;

  //int? seletedUserId;

  SessionUser();
}

// 창고
class SessionStore extends SessionUser {
  void addMenuOptionList(OrderMenuOptionList orderMenuOptionList) {
    if (orderMenuOptionList.required) {
      // 필수 옵션인 경우, 기존의 필수 옵션을 모두 삭제하고 새로운 옵션을 추가합니다.
      menuOptionList.removeWhere((element) => element.required);
      menuOptionList.add(orderMenuOptionList);
    } else {
      // 선택 옵션인 경우
      bool alreadySelected = false;

      // menuOptionList를 순회하면서 선택한 옵션이 이미 있는지 확인합니다.
      for (var option in menuOptionList) {
        if (option.name == orderMenuOptionList.name &&
            option.price == orderMenuOptionList.price &&
            option.required == orderMenuOptionList.required) {
          alreadySelected = true;
          break;
        }
      }
      if (alreadySelected) {
        // 이미 선택된 옵션이 있으면 제거합니다.
        menuOptionList
            .removeWhere((item) => item.name == orderMenuOptionList.name);
      } else {
        // 선택된 옵션이 없으면 추가합니다.
        menuOptionList.add(orderMenuOptionList);
      }
      print('alreadySelected: ${alreadySelected}');
    }

    print(menuOptionList);
  }

  final mContext = navigatorKey.currentContext;

// void loginCheck(String path) {
//   if (isLogin) {
//     Navigator.pushNamed(mContext!, path);
//   } else {
//     Navigator.pushNamed(mContext!, Move.login);
//   }
// }
//

  Future<void> logout() async {
    super.user = null;
    super.accessToken = null;
    super.isLogin = false;

    await secureStorage.delete(key: "accessToken");
    Navigator.popAndPushNamed(mContext!, Move.loginMethod);
  }


  Future<void> join(JoinReqDTO joinReqDTO) async {
    ResponseDTO responseDTO = await UserRepository().fetchJoin(joinReqDTO);
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

    if (responseDTO.status == 200) {
      await secureStorage.write(key: "accessToken", value: accessToken);

      this.user = responseDTO.response;
      this.accessToken = accessToken;
      this.isLogin = true;
      Navigator.pushNamedAndRemoveUntil(
        mContext!,
        Move.mainHolder, // '/main' 화면으로 이동
        ModalRoute.withName(Move.home), // 'home' 화면까지 스택 제거
      ); // 로그인 성공 시 mainHolder
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

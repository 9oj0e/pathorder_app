import 'package:flutter/cupertino.dart';
import 'package:validators/validators.dart';

Function validateUserId() {
  return (String? value) {

    if (value!.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    } else if (!isAlphanumeric(value)) {
      return "아이디에 한글이나 특수 문자가 들어갈 수 없습니다.";
    } else if (value.length > 12) {
      return "아이디의 길이를 초과하였습니다.";
    } else if (value.length < 3) {
      return "아이디의 최소 길이는 3자입니다.";
    } else {
      return null;
    }
  };
}

Function validatePassword() {
  return (String? value) {
    if (value!.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    } else if (value.length > 20) {
      return "패스워드의 길이를 초과하였습니다.";
    } else if (value.length < 4) {
      return "패스워드의 최소 길이는 4자입니다.";
    } else {
      return null;
    }
  };
}

Function validatePasswordMatch(TextEditingController passwordController) {
  return (String? value) {
    if (value!.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    } else if (value != passwordController.text) {
      return "비밀번호가 일치하지 않습니다.";
    } else {
      return null;
    }
  };
}


Function validateNickname() {
  return (String? value) {
    if (value!.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    } else if (value.length > 20) {
      return "별명의 길이를 초과하였습니다.";
    } else if (value.length < 2) {
      return "별명의 최소 길이는 2자입니다.";
    } else {
      return null;
    }
  };
}

Function validateEmail() {
  return (String? value) {
    if (value!.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    } else if (!isEmail(value)) {
      return "이메일 형식에 맞지 않습니다.";
    } else {
      return null;
    }
  };
}

Function validateTel() {
  return (String? value) {
    if (value!.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    } else if (value.length > 11) {
      return "전화번호 형식에 맞지 않습니다.";
    } else {
      return null;
    }
  };
}


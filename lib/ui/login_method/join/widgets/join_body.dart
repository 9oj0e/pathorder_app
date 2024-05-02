import 'package:flutter/material.dart';

import 'join_button.dart';
import 'join_exta_button.dart';
import 'join_text_form_field.dart';

class JoinBody extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _nickname = TextEditingController();
  final _name = TextEditingController();
  final _tel = TextEditingController();
  final _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 0.5,
            width: double.infinity,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // TODO: validator 주석 해제
                      JoinTextFormField(
                        text: '아이디',
                        hinttext: '아이디 입력',
                        // validator: validateUserId(),
                        controller: _username,
                      ),
                      SizedBox(height: 15),
                      JoinTextFormField(
                        text: '비밀번호',
                        hinttext: '비밀번호 입력',
                        // validator: validatePassword(),
                        controller: _password,
                      ),
                      SizedBox(height: 15),
                      // JoinTextFormField(
                      //   text: '비밀번호 확인',
                      //   hinttext: '비밀번호 확인',
                      //   validator: validatePasswordMatch(passwordController),
                      // ),
                      // SizedBox(height: 15),
                      JoinTextFormField(
                        text: '별명',
                        hinttext: '별명 입력',
                        // validator: validateNickname(),
                        controller: _nickname,
                      ),
                      SizedBox(height: 15),
                      JoinTextFormField(
                        text: '이름',
                        hinttext: '이름 입력',
                        // validator: validateName(),
                        controller: _name,
                      ),
                      SizedBox(height: 15),
                      JoinTextFormField(
                        text: '전화번호',
                        hinttext: 'ex)01012345678',
                        // validator: validateTel(),
                        controller: _tel,
                      ),
                      SizedBox(height: 15),
                      JoinTextFormField(
                        text: '이메일',
                        hinttext: 'ex)ssar1234@nate.com',
                        // validator: validateEmail(),
                        controller: _email,
                      ),
                      SizedBox(height: 15),
                      JoinExtraButton(),
                      SizedBox(height: 10),
                      JoinButton(
                        formKey: _formKey,
                        name: _name,
                        email: _email,
                        nickname: _nickname,
                        password: _password,
                        tel: _tel,
                        username: _username,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

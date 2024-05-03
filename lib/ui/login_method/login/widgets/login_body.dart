import 'package:flutter/material.dart';
import 'package:pathorder_app/_core/utils/validator_util.dart';

import 'login_button.dart';
import 'login_extra_button.dart';
import 'login_text_form_field.dart';

class LoginBody extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    LoginTextFormField(
                      controller: _username,
                      text: '아이디',
                      hinttext: '아이디 입력',
                      validator: validateUserId(),
                    ),
                    SizedBox(height: 15),
                    LoginTextFormField(
                      controller: _password,
                      text: '비밀번호',
                      hinttext: '비밀번호 입력',
                      validator: validatePassword(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              LoginExtraButton(),
              SizedBox(height: 10),
              LoginButton(formKey: _formKey, username: _username, password: _password)
            ],
          ),
        ),
      ],
    );
  }
}

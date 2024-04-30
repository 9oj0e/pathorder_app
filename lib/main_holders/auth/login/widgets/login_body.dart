import 'package:flutter/material.dart';

import 'login_button.dart';
import 'login_extra_button.dart';
import 'login_text_form_field.dart';

class LoginBody extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

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
                      text: '이메일',
                      hinttext: 'ex)ssar1234@nate.com',
                    ),
                    SizedBox(height: 15),
                    LoginTextFormField(
                      text: '비밀번호',
                      hinttext: '비밀번호 입력',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              LoginExtraButton(),
              SizedBox(height: 10),
              LoginButton(formKey: _formKey)
            ],
          ),
        ),
      ],
    );
  }
}

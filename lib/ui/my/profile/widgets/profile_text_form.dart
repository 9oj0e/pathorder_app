import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/my/profile/widgets/profile_text_form_field.dart';
import 'package:pathorder_app/ui/my/profile/widgets/profile_text_form_field_phone.dart';

class ProfileTextForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>(); // 1. 글로벌 key


  @override
  Widget build(BuildContext context) {
    return Form(
      // 2. 글로벌 key를 Form 태그에 연결하여 해당 key로 Form의 상태를 관리할 수 있다.
      key: _formKey,
      child: Column(
        children: [
          ProfileTextFormField(text: '닉네임'),
          const SizedBox(height: 10),
          ProfileTextFormField(text: '이메일'),
          const SizedBox(height: 10),
          ProfileTextFormFieldPhone(text: '휴대폰'),
        ],
      ),
    );
  }
}

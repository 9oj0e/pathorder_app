import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/user_request.dart';
import 'package:pathorder_app/data/store/session_store.dart';

class LoginButton extends ConsumerWidget {
  const LoginButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.username,
    required this.password,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final username;
  final password;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.deepOrangeAccent,
      ),
      child: InkWell(
        splashColor: Colors.black,
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          // if (_formKey.currentState!.validate()) {
          //   Navigator.pushNamed(context, "/home");
          // }

          bool isOk = _formKey.currentState!.validate();

          if (isOk) {
            String _username = username.text.trim();
            String _password = password.text.trim();
            print("유저네임 : ${_username}");
            print("비밀번호 : ${_password}");

            LoginReqDTO loginReqDTO =
                LoginReqDTO(username: _username, password: _password);

            SessionStore store = ref.read(sessionProvider);

            store.login(loginReqDTO);
          }
        },
        child: Center(
          child: Text(
            "로그인",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

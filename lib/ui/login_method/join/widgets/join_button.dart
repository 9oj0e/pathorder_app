import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/user_request.dart';
import 'package:pathorder_app/data/store/session_store.dart';

class JoinButton extends ConsumerWidget {
  JoinButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.username,
    required this.password,
    required this.nickname,
    required this.name,
    required this.tel,
    required this.email,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final username;
  final password;
  final nickname;
  final name;
  final tel;
  final email;

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
          if (_formKey.currentState!.validate()) {
            String _username = username.text.trim();
            String _password = password.text.trim();
            String _nickname = nickname.text.trim();
            String _name = name.text.trim();
            String _tel = tel.text.trim();
            String _email = email.text.trim();

            JoinReqDTO joinReqDTO = JoinReqDTO(
                _username, _password, _nickname, _name, _tel, _email);

            SessionStore store = ref.read(sessionProvider);

            store.join(joinReqDTO);
          }
        },
        child: Center(
          child: Text(
            "회원가입",
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

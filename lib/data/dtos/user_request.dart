class JoinReqDTO {
  final String username;
  final String password;
  final String nickname;
  final String name;
  final String tel;
  final String email;

  JoinReqDTO(this.username, this.password, this.nickname, this.name, this.tel,
      this.email);

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
        "nickname": nickname,
        "name": name,
        "tel": tel,
        "email": email
      };
}

class LoginReqDTO {
  final String username;
  final String password;

  LoginReqDTO({required this.username, required this.password});

  Map<String, dynamic> toJson() => {"username": username, "password": password};
}

class MyProfileUpdateReqDTO {
  final nickname;
  final email;
  final tel;

  MyProfileUpdateReqDTO(
      {required this.nickname, required this.email, required this.tel});

  Map<String, dynamic> toJson() =>
      {"nickname": nickname,
        "email": email,
        "tel": tel
      };
}

class User {
  final int id;
  final String username;
  final String password;
  final String nickname;
  final status;
  final String name;
  final String tel; // 전화번호
  final String email;
  final String imgFilename;
  final registeredAt;

  User({
    required this.id,
    required this.username,
    required this.password,
    required this.nickname,
    required this.status,
    required this.name,
    required this.tel,
    required this.email,
    required this.imgFilename,
    required this.registeredAt,
  });

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        username = json['username'] ?? "",
        password = json['password'] ?? "",
        nickname = json['nickname'],
        status = json['status'] ?? "",
        name = json['name'],
        tel = json['tel'],
        email = json['email'],
        imgFilename = json['imgFilename'],
        registeredAt = json['registeredAt'] ?? null;
}

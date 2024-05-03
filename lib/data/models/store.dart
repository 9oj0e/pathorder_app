class Store {
  final id;

  // 회원 정보
  final username; // 로그인 아이디
  final password;
  final status; // 계정 상태(0 : 비활성, 1 : 활성)
  // 사업자 정보
  final ownerName; // 사업자 이름
  final ownerTel;
  final ownerEmail;
  final bizNum; // 사업자 등록 번호
  // 매장 정보
  final name;
  final tel; // 매장 번호
  final intro; // 매장 소개

  final imgFilename;
  final openingTime; // 개점 시간
  final closingTime; // 폐점 시간
  final closedDay; // 휴무일
  final address; // 주소
  final latitude; // 주소 좌표 위도
  final longitude; // 주소 좌표 경도

  final registeredAt;

  final distance;
  final likeCount;

  const Store({
    required this.id,
    required this.username,
    required this.password,
    required this.status,
    required this.ownerName,
    required this.ownerTel,
    required this.ownerEmail,
    required this.bizNum,
    required this.name,
    required this.tel,
    required this.intro,
    required this.imgFilename,
    required this.openingTime,
    required this.closingTime,
    required this.closedDay,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.registeredAt,
    required this.distance,
    required this.likeCount,
  });

  Store.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        username = json['username'] ?? "",
        password = json['password'] ?? "",
        status = json['status'] ?? "",
        ownerName = json['ownerName'] ?? "",
        ownerTel = json['ownerTel'] ?? "",
        ownerEmail = json['ownerEmail'] ?? "",
        bizNum = json['bizNum'] ?? "",
        name = json['name'] ?? "",
        tel = json['tel'] ?? "",
        intro = json['intro'] ?? "",
        imgFilename = json['imgFilename'] ?? "",
        openingTime = json['openingTime'] ?? "",
        closingTime = json['closingTime'] ?? "",
        closedDay = json['closedDay'] ?? "",
        address = json['address'] ?? "",
        latitude = json['latitude'] ?? "",
        longitude = json['longitude'] ?? "",
        registeredAt = json['registeredAt'] ?? "",
        distance = json['distance'] ?? "",
        likeCount = json['likeCount'] ?? "";
}

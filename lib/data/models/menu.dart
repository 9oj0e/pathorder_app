class Menu {
  final id;

  // 메뉴 정보
  final price; // 메뉴 하나의 가격
  final category; // 각 메뉴가 포함되는 카테고리, 점주가 직접 작성
  final name; // 메뉴 이름

  final imgFilename;
  final description; // 메뉴 설명
  // 참조 정보 - 매장

  final registeredAt;

  Menu.name(this.id, this.price, this.category, this.name, this.imgFilename,
      this.description, this.registeredAt); // 메뉴 등록일

  Menu.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        price = json['price'] ?? "",
        category = json['category'] ?? "",
        name = json['name'] ?? "",
        imgFilename = json['imgFilename'] ?? "",
        description = json['description'] ?? "",
        registeredAt = json['registeredAt'] ?? "";
}

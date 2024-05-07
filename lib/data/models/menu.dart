import 'menu_option.dart';

class Menu {
  final id;

  final menuId;
  final menuName;

  // 메뉴 정보
  final price; // 메뉴 하나의 가격
  final category; // 각 메뉴가 포함되는 카테고리, 점주가 직접 작성
  final name; // 메뉴 이름

  final imgFilename;
  final description; // 메뉴 설명
  // 참조 정보 - 매장
  final storeId;
  final storeName;
  final menuImgFilename;
  final menuPrice;
  List<MenuOption> optionList;

  final registeredAt;

  Menu({
    required this.id,
    required this.menuId,
    required this.menuName,
    required this.price,
    required this.category,
    required this.name,
    required this.imgFilename,
    required this.description,
    required this.storeId,
    required this.storeName,
    required this.menuImgFilename,
    required this.menuPrice,
    required this.optionList,
    required this.registeredAt,
  });

  Menu.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        price = json['price'] ?? "",
        category = json['category'] ?? "",
        name = json['name'] ?? "",
        imgFilename = json['imgFilename'] ?? "",
        description = json['description'] ?? "",
        registeredAt = json['registeredAt'] ?? "",
        menuId = json['menuId'] ?? "",
        menuName = json['menuName'] ?? "",
        storeId = json['storeId'] ?? "",
        storeName = json['storeName'] ?? "",
        menuImgFilename = json['menuImgFilename'] ?? "",
        menuPrice = json['menuPrice'] ?? "",
        optionList = json["optionList"] != null
            ? List<MenuOption>.from(
                json["optionList"].map((x) => MenuOption.fromJson(x)))
            : [];
}

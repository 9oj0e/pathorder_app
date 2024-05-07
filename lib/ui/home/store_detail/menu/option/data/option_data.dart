class OptionData {
  int storeId;
  String storeName;
  int menuId;
  String menuName;
  dynamic menuImgFilename;
  int menuPrice;

  OptionData({
    required this.storeId,
    required this.storeName,
    required this.menuId,
    required this.menuName,
    required this.menuImgFilename,
    required this.menuPrice,
  });

  OptionData.fromJson(Map<String, dynamic> json)
      : storeId = json["storeId"],
        storeName = json["storeName"],
        menuId = json["menuId"],
        menuName = json["menuName"],
        menuImgFilename = json["menuImgFilename"],
        menuPrice = json["menuPrice"];
}

class OrderDetail {
  int storeId;
  String storeName;
  String storeTel;
  int id;
  String request;
  String createdAt;
  String status;
  String totalPrice;

  OrderDetail({
    required this.storeId,
    required this.storeName,
    required this.storeTel,
    required this.id,
    required this.request,
    required this.createdAt,
    required this.status,
    required this.totalPrice,
  });

  OrderDetail.fromJson(Map<String, dynamic> json)
      : storeId = json["storeId"],
        storeName = json["storeName"],
        storeTel = json["storeTel"],
        id = json["id"],
        request = json["request"],
        createdAt = json["createdAt"],
        status = json["status"],
        totalPrice = json["totalPrice"];
}

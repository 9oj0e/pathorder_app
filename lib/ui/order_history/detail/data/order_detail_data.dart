class OrderDetailData {
  int storeId;
  String storeName;
  String storeTel;
  int id;
  String request;
  String createdAt;
  String status;
  List<OrderMenuList> orderMenuList;
  String totalPrice;

  OrderDetailData({
    required this.storeId,
    required this.storeName,
    required this.storeTel,
    required this.id,
    required this.request,
    required this.createdAt,
    required this.status,
    required this.orderMenuList,
    required this.totalPrice,
  });

  factory OrderDetailData.fromJson(Map<String, dynamic> json) =>
      OrderDetailData(
        storeId: json["storeId"],
        storeName: json["storeName"],
        storeTel: json["storeTel"],
        id: json["id"],
        request: json["request"],
        createdAt: json["createdAt"],
        status: json["status"],
        orderMenuList: List<OrderMenuList>.from(
            json["orderMenuList"].map((x) => OrderMenuList.fromJson(x))),
        totalPrice: json["totalPrice"],
      );

  Map<String, dynamic> toJson() => {
        "storeId": storeId,
        "storeName": storeName,
        "storeTel": storeTel,
        "id": id,
        "request": request,
        "createdAt": createdAt,
        "status": status,
        "orderMenuList":
            List<dynamic>.from(orderMenuList.map((x) => x.toJson())),
        "totalPrice": totalPrice,
      };
}

class OrderMenuList {
  int id;
  String name;
  String price;
  List<OrderMenuOptionList> orderMenuOptionList;
  int qty;
  String totalPrice;

  OrderMenuList({
    required this.id,
    required this.name,
    required this.price,
    required this.orderMenuOptionList,
    required this.qty,
    required this.totalPrice,
  });

  factory OrderMenuList.fromJson(Map<String, dynamic> json) => OrderMenuList(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        orderMenuOptionList: List<OrderMenuOptionList>.from(
            json["orderMenuOptionList"]
                .map((x) => OrderMenuOptionList.fromJson(x))),
        qty: json["qty"],
        totalPrice: json["totalPrice"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "orderMenuOptionList":
            List<dynamic>.from(orderMenuOptionList.map((x) => x.toJson())),
        "qty": qty,
        "totalPrice": totalPrice,
      };
}

class OrderMenuOptionList {
  int id;
  String name;
  String price;

  OrderMenuOptionList({
    required this.id,
    required this.name,
    required this.price,
  });

  factory OrderMenuOptionList.fromJson(Map<String, dynamic> json) =>
      OrderMenuOptionList(
        id: json["id"],
        name: json["name"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
      };
}

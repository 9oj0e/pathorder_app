class OrderReqDTO {
  int storeId;
  String storeName;
  int customerId;
  String customerNickname;
  String request;
  List<OrderMenuList> orderMenuList;

  OrderReqDTO({
    required this.storeId,
    required this.storeName,
    required this.customerId,
    required this.customerNickname,
    required this.request,
    required this.orderMenuList,
  });

  OrderReqDTO.fromJson(Map<String, dynamic> json)
      : storeId = json["storeId"],
        storeName = json["storeName"],
        customerId = json["customerId"],
        customerNickname = json["customerNickname"],
        request = json["request"],
        orderMenuList = List<OrderMenuList>.from(
            json["orderMenuList"].map((x) => OrderMenuList.fromJson(x)));

  Map<String, dynamic> toJson() => {
        "storeId": storeId,
        "storeName": storeName,
        "customerId": customerId,
        "customerNickname": customerNickname,
        "request": request,
        "orderMenuList":
            List<dynamic>.from(orderMenuList.map((x) => x.toJson())),
      };
}

class OrderMenuList {
  String name;
  int price;
  int qty;
  List<OrderMenuOptionList> orderMenuOptionList;

  OrderMenuList({
    required this.name,
    required this.price,
    required this.qty,
    required this.orderMenuOptionList,
  });

  OrderMenuList.fromJson(Map<String, dynamic> json)
      : name = json["name"],
        price = json["price"],
        qty = json["qty"],
        orderMenuOptionList = List<OrderMenuOptionList>.from(
            json["orderMenuOptionList"]
                .map((x) => OrderMenuOptionList.fromJson(x)));

  Map<String, dynamic> toJson() => {
        "name": name,
        "price": price,
        "qty": qty,
        "orderMenuOptionList":
            List<dynamic>.from(orderMenuOptionList.map((x) => x.toJson())),
      };
}

class OrderMenuOptionList {
  String name;
  int price;

  OrderMenuOptionList({
    required this.name,
    required this.price,
  });

  OrderMenuOptionList.fromJson(Map<String, dynamic> json)
      : name = json["name"],
        price = json["price"];

  Map<String, dynamic> toJson() => {
        "name": name,
        "price": price,
      };
}

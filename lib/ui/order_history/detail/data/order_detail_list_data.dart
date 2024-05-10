class OrderDetailList {
  int id;
  String name;
  String price;
  List<OrderMenuOptionList> orderMenuOptionList;
  int qty;
  String totalPrice;

  OrderDetailList({
    required this.id,
    required this.name,
    required this.price,
    required this.orderMenuOptionList,
    required this.qty,
    required this.totalPrice,
  });

  OrderDetailList.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"],
        price = json["price"],
        orderMenuOptionList = List<OrderMenuOptionList>.from(
            json["orderMenuOptionList"]
                .map((x) => OrderMenuOptionList.fromJson(x))),
        qty = json["qty"],
        totalPrice = json["totalPrice"];
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

  OrderMenuOptionList.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"],
        price = json["price"];
}

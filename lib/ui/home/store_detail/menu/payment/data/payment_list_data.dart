class PaymentListData {
  int id;
  String name;
  String price;
  List<OrderMenuOptionList> orderMenuOptionList;
  int qty;
  int totalPrice;

  PaymentListData({
    required this.id,
    required this.name,
    required this.price,
    required this.orderMenuOptionList,
    required this.qty,
    required this.totalPrice,
  });

  PaymentListData.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"],
        orderMenuOptionList = List<OrderMenuOptionList>.from(
            json["orderMenuOptionList"]
                .map((x) => OrderMenuOptionList.fromJson(x))),
        price = json["price"],
        qty = json["qty"],
        totalPrice = json["totalPrice"];
}

class OrderMenuOptionList {
  String name;
  String price;

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

import 'package:pathorder_app/data/dtos/order_request.dart';

class OrderDetailList {
  int id;
  String name;
  final price;
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

// class OrderMenuOptionList {
//   final name;
//   final price;
//   final required;
//
//   OrderMenuOptionList({
//     required this.name,
//     required this.price,
//     required this.required,
//   });
//
//   OrderMenuOptionList.fromJson(Map<String, dynamic> json)
//       : name = json["name"],
//         price = json["price"],
//         required = json["required"];
//
//   @override
//   String toString() {
//     return 'OrderMenuOptionList{name: $name, price: $price, required: $required}';
//   }
// }

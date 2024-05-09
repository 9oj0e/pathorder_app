import 'package:pathorder_app/data/models/cart_option_list.dart';

class Cart {
  final name;
  final price;
  List<CartOptionList> cartOptionList;

  Cart({required this.name, required this.price, required this.cartOptionList});

  Map<String, dynamic> toJson() => {
        "name": name,
        "price": price,
        "orderMenuOptionList": cartOptionList,
      };

// Cart.fromJson(Map<String, dynamic> json)
//     : name = json['name'] ?? 0,
//       price = json['price'] ?? "";
}

class CartItem {
  final name;
  int? price;

  CartItem({required this.name, required this.price});

  Map<String, dynamic> toJson() => {
        "name": name,
        "price": price,
      };

// Cart.fromJson(Map<String, dynamic> json)
//     : name = json['name'] ?? 0,
//       price = json['price'] ?? "";
}

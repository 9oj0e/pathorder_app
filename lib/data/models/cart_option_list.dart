class CartOptionList {
  final name;
  final price;

  CartOptionList({
    required this.name,
    required this.price,
  });

  Map<String, dynamic> toJson() => {
        "name": name,
        "price": price,
      };

  CartOptionList.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 0,
        price = json['price'] ?? "";
}

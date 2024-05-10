class CartItemOption {
  // 장바구니 아이템 옵션 정보
  String? name = 'ice';
  int? price = 0;

  CartItemOption({required this.name, required this.price});

  Map<String, dynamic> toJson() => {
        "name": name,
        "price": price,
      };

// Cart.fromJson(Map<String, dynamic> json)
//     : name = json['name'] ?? 0,
//       price = json['price'] ?? "";
}

class OrderMenuList {
  final id;
  final name;
  final totalPrice;

  OrderMenuList(
      {required this.id, required this.name, required this.totalPrice});

  factory OrderMenuList.fromJson(Map<String, dynamic> json) {
    return OrderMenuList(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      totalPrice: json["totalPrice"] ?? 0,
    );
  }
}

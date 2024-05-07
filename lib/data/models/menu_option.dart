class MenuOption {
  final id;
  final name;
  final price;
  final required;

  MenuOption({
    required this.id,
    required this.name,
    required this.price,
    required this.required,
  });

  MenuOption.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'] ?? "",
        price = json['price'] ?? "",
        required = json['required'] ?? "";
}

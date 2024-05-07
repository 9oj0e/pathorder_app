class OptionListData {
  int id;
  String name;
  int price;
  bool required;

  OptionListData({
    required this.id,
    required this.name,
    required this.price,
    required this.required,
  });

  OptionListData.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"],
        price = json["price"],
        required = json["required"];
}

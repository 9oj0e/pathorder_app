class PaymentHeaderData {
  int customerId;
  String customerNickname;
  int storeId;
  String storeName;
  int id;
  String request;
  String status;
  String totalPrice;

  PaymentHeaderData({
    required this.customerId,
    required this.customerNickname,
    required this.storeId,
    required this.storeName,
    required this.id,
    required this.request,
    required this.status,
    required this.totalPrice,
  });

  PaymentHeaderData.fromJson(Map<String, dynamic> json)
      : customerId = json["customerId"],
        customerNickname = json["customerNickname"],
        storeId = json["storeId"],
        storeName = json["storeName"],
        id = json["id"],
        request = json["request"],
        status = json["status"],
        totalPrice = json["totalPrice"];
}

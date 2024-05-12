import 'order_menu_list.dart';

class OrderList {
  final storeId;
  final storeName;
  final id;
  final String status;
  final createdAt;
  final List<OrderMenuList> orderMenuList;
  final totalPrice;

  OrderList(
      {required this.storeId,
      required this.storeName,
      required this.id,
      required this.status,
      required this.createdAt,
      required this.orderMenuList,
      required this.totalPrice});

  factory OrderList.fromJson(Map<String, dynamic> json) {
    return OrderList(
        storeId: json["storeId"] ?? 0,
        storeName: json["storeName"] ?? "",
        id: json["id"] ?? 0,
        status: json["status"] ?? "",
        createdAt: json["createdAt"] ?? null,
        orderMenuList: List<OrderMenuList>.from(
            json["orderMenuList"].map((x) => OrderMenuList.fromJson(x))),
        totalPrice: json["totalPrice"] ?? 0);
  }
}

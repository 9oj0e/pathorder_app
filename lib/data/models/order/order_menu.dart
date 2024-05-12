import '../menu_option.dart';
import 'order.dart';
import 'order_menu_option.dart';

// 주문한 메뉴 !!
class OrderMenu {

  final int id;

  // 메뉴 정보
  final String name;
  final int price;
  final int totalPrice;
  final int qty; // 개수

  // 참조 정보
  final Order order;
  final List<OrderMenuOption> orderMenuOptions;
  final createdAt;

  OrderMenu({
    required this.id,
    required this.name,
    required this.price,
    this.totalPrice = 0,
    required this.qty,
    required this.order,
    required this.orderMenuOptions,
    required this.createdAt
  });

  factory OrderMenu.fromJson(Map<String, dynamic> json) {
    return OrderMenu(
      id: int.parse(json["id"]) ?? 0,
      name: json["name"] ?? "",
      price: int.parse(json["price"]) ?? 0,
      totalPrice: json["totalPrice"] != null ? int.parse(json["totalPrice"]) : 0, // totalPrice 값이 null일 경우 0으로 초기화
      qty: int.parse(json["qty"]) ?? 0,
      order: Order.fromJson(json["order"]),
      orderMenuOptions: (json["orderMenuOptions"] as List<dynamic>)
          .map((i) => OrderMenuOption.fromJson(i as Map<String, dynamic>))
          .toList(),
      createdAt: json["createdAt"] ?? null,
    );
  }
}

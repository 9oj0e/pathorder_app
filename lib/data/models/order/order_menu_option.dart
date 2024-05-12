import 'order.dart';
import 'order_menu.dart';

// 메뉴 옵션 정보 !!
class OrderMenuOption{

  final int id;

  // 주문 메뉴 옵션
  final int price; // 옵션 하나 가격
  final String name; // 옵션 이름

  // 참조 정보
  final Order order; // 하나의 주문은 여러 메뉴 옵션을 가질 수 있음
  final OrderMenu orderMenu; // 하나의 메뉴는 여러 옵션을 가질 수 있음
  final createdAt;

  OrderMenuOption({
    required this.id,
    required this.price,
    required this.name,
    required this.order,
    required this.orderMenu,
    required this.createdAt});

  factory OrderMenuOption.fromJson(Map<String, dynamic> json) {
    return OrderMenuOption(
      id: int.parse(json["id"]) ?? 0,
      price: int.parse(json["price"]) ?? 0,
      name: json["name"] ?? "",
      order: Order.fromJson(json["order"]),
      orderMenu: OrderMenu.fromJson(json["orderMenu"]),
      createdAt: json["createdAt"] ?? null,
    );
  }
}
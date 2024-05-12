import '../store.dart';
import '../user.dart';
import 'order_menu.dart';
import 'order_status.dart';

// 전체적인 주문 내역 !!
class Order {

  // 손님 정보
  final int id;
  final User customer;
  final String customerNickname;
  final String request; // 요청 사항, ex) 연하게 해주세요, 캐리어에 담아주세요, 얼음 많이 넣어주세요.

  // 매장 정보
  final Store store;
  final String storeName;

  // 주문 정보
  final int totalPrice;
  final OrderStatus status;

  // 주문 메뉴 정보
  final List<OrderMenu> orderMenus; // 주문한 메뉴 정보
  final createdAt;

  Order({
    required this.id,
    required this.customer,
    required this.customerNickname,
    required this.request,
    required this.store,
    required this.storeName,
    this.totalPrice = 0,
    required this.status,
    required this.orderMenus,
    required this.createdAt,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: int.parse(json["id"]) ?? 0,
      customer: User.fromJson(json["customer"]),
      customerNickname: json["customerNickname"] ?? "",
      request: json["request"] ?? "",
      store: Store.fromJson(json["store"]),
      storeName: json["storeName"] ?? "",
      totalPrice: int.parse(json["totalPrice"]) ?? 0,
      status: OrderStatus.values.firstWhere((e) => e.toString() == 'OrderStatus.${json['status']}'),
      orderMenus: json["orderMenus"] != null ? List<OrderMenu>.from(json["orderMenus"].map((x) => OrderMenu.fromJson(x))) : [],
      createdAt: json["createdAt"] ?? null,
    );
  }
}
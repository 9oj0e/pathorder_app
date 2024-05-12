enum OrderStatus {
  PENDING,
  DENIED,
  CONFIRMED,
  PREPARING,
  PREPARED,
  SERVED

}

extension OrderStatusExtension on OrderStatus {
  String? get value {
    switch (this) {
      case OrderStatus.PENDING:
        return "접수대기";
      case OrderStatus.DENIED:
        return "주문거절";
      case OrderStatus.CONFIRMED:
        return "주문완료";
      case OrderStatus.PREPARING:
        return "조리중";
      case OrderStatus.PREPARED:
        return "조리완료";
      case OrderStatus.SERVED:
        return "수령완료";
      default:
        return null;
    }
  }


}
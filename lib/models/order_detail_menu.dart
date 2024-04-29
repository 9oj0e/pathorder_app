class OrderDetailMenu {
  final name;
  final count;
  final price;

  const OrderDetailMenu({
    required this.name,
    required this.count,
    required this.price,
  });
}

final List<OrderDetailMenu> orderDetailMenu1 = [
  OrderDetailMenu(name: '아메리카노', count: 1, price: '2,000원'),
  OrderDetailMenu(name: '녹차라떼', count: 1, price: '3,500원'),
  OrderDetailMenu(name: '바다 소금 라떼', count: 1, price: '3,900원'),
  OrderDetailMenu(name: '딸기 스노잉', count: 1, price: '3,900원'),
];

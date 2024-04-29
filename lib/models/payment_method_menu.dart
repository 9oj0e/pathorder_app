class PaymentMethodMenu {
  final String title;

  PaymentMethodMenu({required this.title});
}

final List<PaymentMethodMenu> paymentMethodMenu = [
  PaymentMethodMenu(title: '카카오페이'),
  PaymentMethodMenu(title: '네이버페이'),
  PaymentMethodMenu(title: '토스페이'),
  PaymentMethodMenu(title: '페이코'),
  PaymentMethodMenu(title: '애플페이'),
  PaymentMethodMenu(title: '신용/체크카드'),
];

class CardMenu {
  final String title;
  final String imageUrl;

  CardMenu({required this.title, required this.imageUrl});
}

// 마이페이지 - 내 카드
final List<CardMenu> cardMenu1 = [
  CardMenu(
    title: '삼성 카드',
    imageUrl: 'https://img.sbs.co.kr/sbscnbc/upload/2020/08/31/10000664232.jpg',
  ),
  CardMenu(
    title: '현대 카드',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0sfRO4eEZrDire4-oldw0Ci5y_hmG69-GXQ&usqp=CAU',
  ),
];

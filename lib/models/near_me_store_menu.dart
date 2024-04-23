class NearMeStoreMenu {
  final String title;
  final String imageUrl;

  NearMeStoreMenu({required this.title, required this.imageUrl});
}

// 마이페이지 - 내 카드
final List<NearMeStoreMenu> cardMenu1 = [
  NearMeStoreMenu(
    title: '컴포즈커피 서면학원점',
    imageUrl:
        'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240422_20%2F1713754167905RSx9p_JPEG%2FKakaoTalk_20240322_120809836.jpg',
  ),
  NearMeStoreMenu(
    title: '더리터 서면중앙점',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0sfRO4eEZrDire4-oldw0Ci5y_hmG69-GXQ&usqp=CAU',
  ),
];

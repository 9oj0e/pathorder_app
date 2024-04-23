class NearMeStoreMenu {
  final String title;
  final String imageUrl;
  final String distance;
  final int likes;
  final int comments;

  NearMeStoreMenu({
    required this.title,
    required this.imageUrl,
    required this.distance,
    required this.likes,
    required this.comments,
  });
}

// 마이페이지 - 내 카드
final List<NearMeStoreMenu> nearMeStoreMenu1 = [
  NearMeStoreMenu(
    title: '컴포즈커피 서면학원점',
    imageUrl:
        'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240422_20%2F1713754167905RSx9p_JPEG%2FKakaoTalk_20240322_120809836.jpg',
    distance: "16.3m",
    likes: 178,
    comments: 155,
  ),
  NearMeStoreMenu(
    title: '더리터 서면중앙점',
    imageUrl:
        'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20180308_300%2F1520496124988uhPQG_JPEG%2FkiJTYXtAXabJvQaFvUYLoTw6.jpg',
    distance: "16.3m",
    likes: 178,
    comments: 155,
  ),
  NearMeStoreMenu(
    title: '정직유부 서면1호점',
    imageUrl:
        'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20231130_49%2F1701312434748Asi4T_JPEG%2F%2528%25BD%25C5%2529%25C1%25A4%25C1%25F7%25C0%25AF%25BA%25CE_%25B7%25CE%25B0%25ED111-01.jpg',
    distance: "16.3m",
    likes: 178,
    comments: 155,
  ),
  NearMeStoreMenu(
    title: '더벤티 서면점',
    imageUrl:
        'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20200420_100%2F1587391762556uc16G_JPEG%2FKakaoTalk_20200420_215255676_03.jpg',
    distance: "16.3m",
    likes: 178,
    comments: 155,
  ),
];

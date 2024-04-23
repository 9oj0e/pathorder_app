class Cafe {
  final cafeName;
  final cafeImg;
  final like;
  final review;
  final distance;
  final order;

  Cafe({
    required this.cafeName,
    required this.cafeImg,
    required this.like,
    required this.review,
    required this.distance,
    required this.order,
  });
}

// 샘플 데이터
List<Cafe> cafeList = [
  Cafe(
    cafeName: '카페 이떼',
    like: 540,
    review: 342,
    cafeImg:
        'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDAyMDZfMjA2%2FMDAxNzA3MjE4OTY2Njcz.1HPQBok6UoB4KGRpvcQYsPLhMBXGR05LILlLKhK579gg.u-LTVEay4GtAR1khZ49aRDC_tUhwj-F57Pwh99MIQm4g.JPEG.poqwklsa%2F20240206%25A3%25DF132111.jpg&type=a340',
    distance: 32,
    order: 6543,
  ),
  Cafe(
    cafeName: '우산 커피',
    like: 362,
    review: 842,
    cafeImg:
        'https://search.pstatic.net/sunny/?src=https%3A%2F%2Fi.pinimg.com%2Foriginals%2Fe6%2F58%2F62%2Fe65862452a2d79746661081fcb9d7224.jpg&type=a340',
    distance: 392,
    order: 1542,
  ),
  Cafe(
    cafeName: '텐퍼센트',
    like: 57,
    review: 136,
    cafeImg:
        'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA0MTNfMTQz%2FMDAxNjQ5ODUyNDE0Njc0.b3eL-BIgdYP6Kq0u9P02iiELVB4JrOrV8zTovZFOgHog.-tUvEU5fB3YTrzHHAgo5cDxkgXHZmfjc-RICfmi-V4Ug.JPEG.vmfpdla0718%2FKakaoTalk_20220314_195205288_21.jpg&type=a340',
    distance: 92,
    order: 435,
  ),
  Cafe(
    cafeName: '카페 051',
    like: 231,
    review: 67,
    cafeImg:
        'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA2MjJfMTE2%2FMDAxNjI0MzI1OTM1MTI2.zxqAq0PEIumL1R3i4My_tmb7bXsVlYnF056PM7BViFIg.iN98VkVZnHX5ADzdX4M3_Hi5OK01GYxhVgxYJBosBDog.JPEG.soodar96%2FIMG_7461.jpg&type=a340',
    distance: 755,
    order: 856,
  ),
  Cafe(
    cafeName: '더벤티',
    like: 745,
    review: 99,
    cafeImg:
        'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDEyMjNfMTcy%2FMDAxNjA4Njg4ODU3NzE3.lduyUC8U9012fgdLmpp_aCwbpsk0L9oBK8BxVUZfJ94g.3CULgSoIpL1XnJ7yDEKK2wBBmGwwRKsuLVaiwexz2eQg.JPEG.pgi2849%2FIMG_0858.JPG&type=a340',
    distance: 352,
    order: 493,
  ),
  Cafe(
    cafeName: '오리진',
    like: 855,
    review: 385,
    cafeImg:
        'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTExMjVfNzcg%2FMDAxNTc0NjY0Mjk0NTQz._KEgZrqElBmYIVG4aSoKPHgH-ukJ0H_3R-hxlReTXi4g.LHImOyK4tXIJkearg47NpIk06eXUVYkJpc16RmW7rj8g.JPEG.unizzang9%2F05_2.jpeg&type=a340',
    distance: 123,
    order: 2686,
  ),
];

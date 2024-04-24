import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoreDetailAppBar extends StatelessWidget {
  const StoreDetailAppBar({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios, size: 18),
        color: Colors.white,
      ),
      actions: [
        IconButton(
          onPressed: () {
            // TODO : 하트 기능
          },
          icon: Icon(CupertinoIcons.heart),
          color: Colors.white,
        ),
        SizedBox(width: 10),
      ],
      expandedHeight: screenHeight * 0.4, // 사진이 차지하는 화면 비율
      flexibleSpace: PageView.builder(
        itemCount: 1, // 사진 여러개 일시 갯수 입력하고 옆으로 넘기기
        itemBuilder: (context, index) {
          return Image.network(
            // "https://picsum.photos/id/${index + 1}/200/300",
            'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240422_20%2F1713754167905RSx9p_JPEG%2FKakaoTalk_20240322_120809836.jpg',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}

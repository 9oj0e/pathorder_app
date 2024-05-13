import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pathorder_app/_core/constants/http.dart';

class StoreDetailAppBar extends StatelessWidget {
  StoreDetailAppBar(this.screenHeight, this.imgFilename);

  final double screenHeight;
  final String imgFilename;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // pinned: true, TODO: 스크롤하면 다른 디자인 앱바 나오게 하기
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios, size: 18),
        color: Colors.black54,
      ),
      actions: [
        IconButton(
          onPressed: () {
            // TODO : 하트 기능
          },
          icon: Icon(CupertinoIcons.heart),
          color: Colors.black54,
        ),
        SizedBox(width: 10),
      ],
      expandedHeight: screenHeight * 0.3,
      // 사진이 차지하는 화면 비율
      flexibleSpace: PageView.builder(
        itemCount: 1, // 사진 여러개 일시 갯수 입력하고 옆으로 넘기기
        itemBuilder: (context, index) {
          return Image.network(
            '${baseUrl}/upload/${imgFilename}',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}

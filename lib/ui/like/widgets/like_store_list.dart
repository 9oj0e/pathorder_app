import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/_core/constants/http.dart';
import 'package:pathorder_app/ui/home/store_detail/store_detail_page.dart';
import 'package:pathorder_app/ui/like/like_page_view_model.dart';

class LikeStoreList extends ConsumerWidget {
  const LikeStoreList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    LikePageModel? model = ref.watch(likePageProvider);
    if (model == null) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return GridView.count(
        primary: false,
        physics: NeverScrollableScrollPhysics(),
        //내부 리스트뷰 스크롤 동작 비활성화

        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        // 몇개마다 줄바꿈 할 껀지
        childAspectRatio: 2 / 3,
        // child의 비율
        children: List.generate(
          model.likePageData.length,
          (index) => _buildLikeStoreList(
            model.likePageData[index],
            context,
          ),
        ),
      );
    }
  }

  _buildLikeStoreList(final likePageData, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => StoreDetailPage(likePageData.storeId)));
      },
      child: Container(
        padding: const EdgeInsets.all(0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(0),
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  // 테두리의 모든 모서리를 10 픽셀의 원형으로 만듭니다.
                  child: Image.network(
                    '${baseUrl}/upload/${likePageData.storeImgFilename}',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    likePageData.storeName,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.placemark_fill,
                        color: Colors.grey[400],
                      ),
                      Text(
                        '${likePageData.distance}m',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 5),
                      Icon(
                        CupertinoIcons.heart_fill,
                        color: Colors.red,
                        size: 21,
                      ),
                      SizedBox(width: 5),
                      Text(
                        likePageData.likeCount.toString(),
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        CupertinoIcons.chat_bubble_text,
                        size: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        likePageData.reviewCount.toString(),
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

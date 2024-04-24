import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../models/near_me_store_menu.dart';
import '../../store_detail/store_detail_page.dart';

class NearMeStoreBody extends StatelessWidget {
  final List<NearMeStoreMenu> nearMeStoreMenuList;

  NearMeStoreBody(this.nearMeStoreMenuList);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      childAspectRatio: 2 / 3,
      children: List.generate(
        nearMeStoreMenuList.length,
        (index) => _buildNearMeStoreMenuItem(
          nearMeStoreMenuList[index].title,
          nearMeStoreMenuList[index].imageUrl,
          nearMeStoreMenuList[index].distance,
          nearMeStoreMenuList[index].likes,
          nearMeStoreMenuList[index].comments,
          context,
        ),
      ),
    );
  }

  _buildNearMeStoreMenuItem(String title, String imageUrl, String distance,
      int likes, int comments, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StoreDetailPage(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(0),
          child: Column(
            children: [
              Expanded(
                child: Image.network(
                  imageUrl,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
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
                        distance,
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
                        likes.toString(),
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        CupertinoIcons.chat_bubble_text,
                        size: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        comments.toString(),
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

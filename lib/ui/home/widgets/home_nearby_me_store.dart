import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pathorder_app/_core/constants/http.dart';
import 'package:pathorder_app/ui/home/store_detail/store_detail_page.dart';

class HomeNearbyMeStore extends StatelessWidget {
  final String cafeName;
  final int distance;
  final String imageUrl;
  final int id;

  const HomeNearbyMeStore({
    required this.cafeName,
    required this.distance,
    required this.imageUrl,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 0.3,
              color: Colors.white,
            ),
          ),
          width: 163,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildClipRRect(topRight: 10, topLeft: 10),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            cafeName,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                            overflow: TextOverflow.ellipsis,
                            // 길어질 경우 생략 부호(...)를 표시합니다.
                            maxLines: 1,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          CupertinoIcons.phone_down,
                          size: 15,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.location_solid,
                          size: 11,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "${distance}m",
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => StoreDetailPage(id)));
      },
    );
  }

  Widget buildClipRRect({double topLeft = 0, double topRight = 0}) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topRight),
        topRight: Radius.circular(topLeft),
      ),
      child: Stack(children: [
        Image.network(
          '${baseUrl}/upload/${imageUrl}',
          width: 161,
          height: 200,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 178,
          right: 80,
          child: Row(
            children: [
              Icon(
                CupertinoIcons.heart_fill,
                size: 13,
                color: Colors.redAccent,
              ),
              SizedBox(width: 3),
              Text(
                "13",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 3),
              Icon(
                CupertinoIcons.ellipses_bubble_fill,
                size: 13,
                color: Colors.white,
              ),
              SizedBox(width: 3),
              Text(
                "214",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 3),
            ],
          ),
        ),
      ]),
    );
  }
}

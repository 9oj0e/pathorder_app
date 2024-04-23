import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NearbyMe extends StatelessWidget {
  final String cafeName;
  final int distance;
  final IconData iconData;
  final String imageUrl;

  const NearbyMe({
    required this.cafeName,
    required this.distance,
    required this.iconData,
    required this.imageUrl,
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
              color: Colors.grey,
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
                        Text.rich(TextSpan(children: [
                          TextSpan(
                            text: cafeName,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                        ])),
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
                          iconData,
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
        // TODO: 매장 연결
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
          imageUrl,
          width: 161,
          height: 200,
          fit: BoxFit.cover,
        ),
        const Positioned(
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

import 'package:flutter/material.dart';

class OrderHistoryPoint extends StatelessWidget {
  const OrderHistoryPoint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "적립 포인트",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:
                  Border.all(color: Color(0xD7EAEAEA), width: 40),
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '큐티와이님의 포인트',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Stack(children: [
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                width: 73,
                                color: Colors.deepOrangeAccent),
                          ),
                        ),
                        Positioned.fill(
                          child: Center(
                            child: Text(
                              "1000P 사용 가능",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                        )
                      ])
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }
}
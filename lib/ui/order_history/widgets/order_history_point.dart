import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/store/session_store.dart';

class OrderHistoryPoint extends ConsumerWidget {
  const OrderHistoryPoint({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SessionStore sessionStore = ref.read(sessionProvider);

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
                  border: Border.all(color: Color(0xD7EAEAEA), width: 40),
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${sessionStore.user!.nickname}님의 포인트",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Stack(children: [
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                width: 73, color: Colors.deepOrangeAccent),
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

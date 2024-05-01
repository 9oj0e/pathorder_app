import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoreLocation extends StatelessWidget {
  const StoreLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.green,
            child: Center(
                child: Text('지도 자리',
                    style: TextStyle(fontSize: 30, color: Colors.white))),
          ),
          SizedBox(height: 10),
          Text('컴포즈커피 서면학원점'),
          Row(
            children: [
              Icon(
                CupertinoIcons.placemark_fill,
                color: Colors.grey,
              ),
              SizedBox(width: 5),
              Expanded(
                child: Text(
                  '부산광역시 사하구 낙동대로 552 (하단동) 부산시 사하구 낙동대로',
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

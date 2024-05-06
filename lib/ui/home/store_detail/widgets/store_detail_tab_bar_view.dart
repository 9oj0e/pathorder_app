import 'package:flutter/material.dart';

class StoreDetailTabBarView extends StatelessWidget {
  final name;
  final openingTime;
  final closingTime;
  final closedDay;
  final intro;
  final address;


  StoreDetailTabBarView(this.name, this.openingTime, this.closingTime,
      this.closedDay, this.intro, this.address);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TabBarView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${intro}!', style: TextStyle(color: Colors.grey[700])),
                SizedBox(height: 10),
                Text(
                  '* 유의사항 : ${name} 포인트 중복 적립 불가',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('혜택'),
                    SizedBox(width: 40),
                    Text('10개 적립 시 2,000원 할인 쿠폰 제공'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('영업시간'),
                    SizedBox(width: 16),
                    Text('${openingTime}~${closingTime}'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('휴무일'),
                    SizedBox(width: 29),
                    Text('${closedDay}'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('전화번호'),
                    SizedBox(width: 16),
                    Text('0518195485'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('주소'),
                    SizedBox(width: 40),
                    Text('${address}'),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 0.5,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        // TODO: 사업자 정보 페이지 이동
                      },
                      child: Row(
                        children: [
                          Text(
                            '사업자 정보',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                // TODO: 지도 적용해야함
              ],
            ),
          ),
          Container(
            child: Center(
              child: Text('리뷰'),
            ),
          ),
        ],
      ),
    );
  }
}

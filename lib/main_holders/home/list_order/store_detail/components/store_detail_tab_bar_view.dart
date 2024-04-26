import 'package:flutter/material.dart';

class StoreDetailTabBarView extends StatelessWidget {
  const StoreDetailTabBarView({
    super.key,
  });

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
                Text('가성비짱!', style: TextStyle(color: Colors.grey[700])),
                SizedBox(height: 10),
                Text(
                  '* 유의사항 : 컴포즈 포인트 중복 적립 불가',
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
                    Text('월 화 수 목 금 토 일 09:00~00:00'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('휴무일'),
                    SizedBox(width: 29),
                    Text('없음'),
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
                    Text('부산광역시 부산진구\n중앙대로692번길 26(부전동) 26\n1층'),
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
